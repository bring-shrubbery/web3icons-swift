#!/usr/bin/env node
// Generator for web3icons-swift. Calls svg-to-swiftui-core over every mono
// web3icon (tokens / networks / wallets / exchanges) and writes the resulting
// Swift surface into Sources/Web3Icons/.
//
// Modes:
//   --check                 Compare local pinned version against npm latest.
//                           Exits 0 if up to date, 1 if behind.
//   --apply [--version X]   Install @web3icons/core@X (or @latest), regenerate.
//   --help                  Print this help.

import { argv, exit, stdout } from 'node:process'
import { readFile, writeFile, mkdir, mkdtemp, readdir, rm, rename } from 'node:fs/promises'
import { request } from 'node:https'
import { fileURLToPath, pathToFileURL } from 'node:url'
import { spawn } from 'node:child_process'
import { tmpdir } from 'node:os'
import path from 'node:path'

const REPO_ROOT = path.resolve(path.dirname(fileURLToPath(import.meta.url)), '..')
const VERSION_FILE = path.join(REPO_ROOT, 'Tools', 'web3icons-version.json')
const PACKAGE = '@web3icons/core'

// Upstream ships these four categories; we expose the `mono` variant of each.
// `singular` is the enum-case prefix, `Pascal` the struct-name prefix.
export const CATEGORIES = {
  tokens:    { singular: 'token',    Pascal: 'Token' },
  networks:  { singular: 'network',  Pascal: 'Network' },
  wallets:   { singular: 'wallet',   Pascal: 'Wallet' },
  exchanges: { singular: 'exchange', Pascal: 'Exchange' },
}

async function readPinnedVersion() {
  const raw = await readFile(VERSION_FILE, 'utf8')
  const parsed = JSON.parse(raw)
  return parsed.version || null
}

function fetchJson(url) {
  return new Promise((resolve, reject) => {
    const req = request(url, { headers: { accept: 'application/json' } }, (res) => {
      if (res.statusCode !== 200) {
        reject(new Error(`GET ${url} → HTTP ${res.statusCode}`))
        return
      }
      let body = ''
      res.setEncoding('utf8')
      res.on('data', (chunk) => { body += chunk })
      res.on('end', () => {
        try { resolve(JSON.parse(body)) } catch (e) { reject(e) }
      })
    })
    req.on('error', reject)
    req.end()
  })
}

async function latestCoreVersion() {
  const data = await fetchJson(`https://registry.npmjs.org/${PACKAGE}/latest`)
  if (!data.version) throw new Error('npm registry did not return a version')
  return data.version
}

function runCommand(cmd, args, opts = {}) {
  return new Promise((resolve, reject) => {
    const child = spawn(cmd, args, { stdio: ['ignore', 'pipe', 'pipe'], ...opts })
    let stdoutBuf = ''
    let stderrBuf = ''
    child.stdout?.on('data', (d) => { stdoutBuf += d })
    child.stderr?.on('data', (d) => { stderrBuf += d })
    child.on('error', reject)
    child.on('close', (code) => {
      if (code === 0) resolve({ stdout: stdoutBuf, stderr: stderrBuf })
      else reject(new Error(`${cmd} ${args.join(' ')} exited ${code}\n${stderrBuf}`))
    })
  })
}

async function installDependencies(coreVersion) {
  const dir = await mkdtemp(path.join(tmpdir(), 'web3icons-swift-'))
  await runCommand('npm', ['init', '-y', '--silent'], { cwd: dir, stdio: 'ignore' })
  await runCommand('npm', ['install',
    `${PACKAGE}@${coreVersion}`,
    'svg-to-swiftui-core@latest',
    '--no-save', '--silent',
  ], { cwd: dir })
  return {
    workDir: dir,
    svgsDir: path.join(dir, 'node_modules', '@web3icons', 'core', 'dist', 'svgs'),
    corePath: path.join(dir, 'node_modules', 'svg-to-swiftui-core', 'dist', 'index.js'),
  }
}

export function toPascalCase(kebab) {
  return kebab
    .split('-')
    .map((part) => part.length === 0 ? '' : part[0].toUpperCase() + part.slice(1))
    .join('')
    .replace(/[^A-Za-z0-9]/g, '')
}

// Builds the Swift identifiers for one icon from its category folder and
// upstream name. The category prefix guarantees a valid identifier (some
// token tickers start with a digit, e.g. "1INCH") and disambiguates
// cross-category clashes (exchange "1inch" vs. token "1INCH").
export function makeIdentifiers(categoryDir, name) {
  const cat = CATEGORIES[categoryDir]
  if (!cat) throw new Error(`unknown category: ${categoryDir}`)
  const pascalName = toPascalCase(name)
  return {
    structName: cat.Pascal + pascalName,
    caseName: cat.singular + pascalName,
    rawValue: `${cat.singular}/${name}`,
  }
}

async function discoverIcons(svgsDir) {
  const icons = []
  for (const categoryDir of Object.keys(CATEGORIES)) {
    const monoDir = path.join(svgsDir, categoryDir, 'mono')
    const entries = await readdir(monoDir)
    const names = entries
      .filter((f) => f.endsWith('.svg.js'))   // excludes the sibling .svg.js.map files
      .map((f) => f.slice(0, -'.svg.js'.length))
    for (const name of names) {
      const ids = makeIdentifiers(categoryDir, name)
      icons.push({
        categoryDir,
        name,
        ...ids,
        modulePath: path.join(monoDir, `${name}.svg.js`),
      })
    }
  }
  icons.sort((a, b) => a.rawValue.localeCompare(b.rawValue))

  // Defensive: detect struct-name collisions (case-insensitive because target
  // filesystems may be case-insensitive).
  const byKey = new Map()
  for (const icon of icons) {
    const key = icon.structName.toLowerCase()
    if (byKey.has(key)) {
      const other = byKey.get(key)
      throw new Error(
        `struct name collision: ${icon.structName} (from ${icon.rawValue}) ` +
        `conflicts with ${other.structName} (from ${other.rawValue})`
      )
    }
    byKey.set(key, icon)
  }
  return icons
}

const GENERATED_HEADER = (version) =>
  `// GENERATED FROM ${PACKAGE}@${version} — DO NOT EDIT\n` +
  `import SwiftUI\n\n`

async function loadCore(corePath) {
  return await import(pathToFileURL(corePath).href)
}

async function readSvg(modulePath) {
  const mod = await import(pathToFileURL(modulePath).href)
  if (typeof mod.default !== 'string') {
    throw new Error(`module ${modulePath} did not default-export an SVG string`)
  }
  return mod.default
}

async function convertIcon(core, icon, version, outDir) {
  const svgString = await readSvg(icon.modulePath)
  const swiftCode = core.convert(svgString, { structName: icon.structName })

  const transformed = swiftCode
    .replace(/^\s*struct\s+/m, 'internal struct ')
    .replace(/^\s+/, '')

  if (!transformed.includes(`internal struct ${icon.structName}: Shape`)) {
    throw new Error(`post-processing failed for ${icon.structName}: did not find expected struct declaration`)
  }
  const finalPath = path.join(outDir, `${icon.structName}.swift`)
  await writeFile(finalPath, GENERATED_HEADER(version) + transformed, 'utf8')
}

const ICONS_OUT_DIR = path.join(REPO_ROOT, 'Sources', 'Web3Icons', 'Icons')
const ICON_ENUM_FILE = path.join(REPO_ROOT, 'Sources', 'Web3Icons', 'Web3Icon.swift')
const VERSION_SWIFT_FILE = path.join(REPO_ROOT, 'Sources', 'Web3Icons', 'Web3IconsVersion.swift')

async function writeIconEnumFile(icons, version) {
  const cases = icons.map((i) => `    case ${i.caseName} = "${i.rawValue}"`).join('\n')
  const switchArms = icons.map((i) => `        case .${i.caseName}: return ${i.structName}().path(in: rect)`).join('\n')

  const body = `${GENERATED_HEADER(version)}public enum Web3Icon: String, CaseIterable, Sendable {
${cases}
}

extension Web3Icon {
    func makePath(in rect: CGRect) -> Path {
        switch self {
${switchArms}
        }
    }
}
`
  await writeFile(ICON_ENUM_FILE, body, 'utf8')
}

async function writeVersionSwiftFile(version) {
  const body = `${GENERATED_HEADER(version)}public enum Web3IconsVersion {
    public static let web3icons = "${version}"
}
`
  await writeFile(VERSION_SWIFT_FILE, body, 'utf8')
}

async function writeVersionJson(version) {
  await writeFile(VERSION_FILE, JSON.stringify({ version }, null, 2) + '\n', 'utf8')
}

async function convertAll(core, icons, version) {
  const stagingDir = path.join(REPO_ROOT, '.tmp-icons')
  await rm(stagingDir, { recursive: true, force: true })
  await mkdir(stagingDir, { recursive: true })

  stdout.write(`Converting ${icons.length} icons...\n`)
  const failures = []
  let done = 0
  let lastLog = Date.now()

  for (const icon of icons) {
    try {
      await convertIcon(core, icon, version, stagingDir)
      done += 1
    } catch (err) {
      failures.push({ item: icon, error: err })
    }
    if (Date.now() - lastLog > 1000) {
      stdout.write(`  ${done}/${icons.length}\n`)
      lastLog = Date.now()
    }
  }

  if (failures.length > 0) {
    const names = failures.map((f) => `${f.item.structName}: ${f.error.message}`).join('\n  ')
    throw new Error(`${failures.length} icon(s) failed to convert:\n  ${names}`)
  }
  stdout.write(`Converted ${done} icons.\n`)

  await rm(ICONS_OUT_DIR, { recursive: true, force: true })
  await mkdir(path.dirname(ICONS_OUT_DIR), { recursive: true })
  await rename(stagingDir, ICONS_OUT_DIR)
}

const HELP = `Usage:
  node Tools/generate-icons.mjs --check
  node Tools/generate-icons.mjs --apply [--version <semver>]
  node Tools/generate-icons.mjs --help`

export function parseArgs(args) {
  const out = { mode: null, version: null }
  for (let i = 0; i < args.length; i++) {
    const a = args[i]
    if (a === '--check') out.mode = 'check'
    else if (a === '--apply') out.mode = 'apply'
    else if (a === '--help' || a === '-h') out.mode = 'help'
    else if (a === '--version') out.version = args[++i]
    else throw new Error(`unknown argument: ${a}`)
  }
  return out
}

async function main() {
  const args = parseArgs(argv.slice(2))
  if (args.mode === 'help' || args.mode === null) {
    stdout.write(HELP + '\n')
    exit(args.mode === null ? 2 : 0)
  }
  if (args.mode === 'check') {
    const [latest, pinned] = await Promise.all([
      latestCoreVersion(),
      readPinnedVersion(),
    ])
    stdout.write(`pinned: ${pinned || '(none)'}\nlatest: ${latest}\n`)
    if (pinned === latest) {
      stdout.write('up to date\n')
      exit(0)
    }
    stdout.write('update available\n')
    exit(1)
  }
  if (args.mode === 'apply') {
    const target = args.version || await latestCoreVersion()
    stdout.write(`Installing ${PACKAGE}@${target} + svg-to-swiftui-core@latest...\n`)
    const { workDir, svgsDir, corePath } = await installDependencies(target)
    try {
      const icons = await discoverIcons(svgsDir)
      stdout.write(`Discovered ${icons.length} icons.\n`)

      const core = await loadCore(corePath)
      await convertAll(core, icons, target)

      await writeIconEnumFile(icons, target)
      stdout.write(`Wrote ${path.relative(REPO_ROOT, ICON_ENUM_FILE)}\n`)

      await writeVersionSwiftFile(target)
      await writeVersionJson(target)
      stdout.write(`Wrote ${path.relative(REPO_ROOT, VERSION_SWIFT_FILE)}\n`)
      stdout.write(`Wrote ${path.relative(REPO_ROOT, VERSION_FILE)}\n`)
      if (process.env.GITHUB_OUTPUT) {
        const { appendFile } = await import('node:fs/promises')
        await appendFile(process.env.GITHUB_OUTPUT, `version=${target}\n`)
      }
    } finally {
      await rm(workDir, { recursive: true, force: true })
    }
    exit(0)
  }
}

// Only run main when invoked directly, not when imported by a test module.
if (import.meta.url === pathToFileURL(argv[1] || '').href) {
  main().catch((err) => {
    process.stderr.write(`Error: ${err.message}\n`)
    exit(1)
  })
}
