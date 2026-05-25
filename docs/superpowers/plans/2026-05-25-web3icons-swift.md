# web3icons-swift Implementation Plan

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:subagent-driven-development (recommended) or superpowers:executing-plans to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Build `web3icons-swift`, a SwiftUI package exposing all ~1,810 **mono** web3icons (tokens / networks / wallets / exchanges) as generated, fill-rendered `Shape`-backed views — a fill-based sibling of `lucide-swift`.

**Architecture:** A Node generator (`Tools/generate-icons.mjs`) installs `@web3icons/core` + `svg-to-swiftui-core`, converts every mono SVG into one committed `internal struct …: Shape` Swift file, and emits a flat `Web3Icon` enum plus a version constant. The `Web3Icons` SwiftUI View **fills** the selected icon's path with the foreground style (web3icons mono are solid shapes, not strokes). Pixel snapshot tests render every icon to a committed PNG baseline.

**Tech Stack:** Swift 6.0 / SwiftUI (iOS 17+, macOS 14+), Swift Testing (`import Testing`), Node 24 + `svg-to-swiftui-core`, GitHub Actions.

**Working directory:** `/Users/antoni/Projects/web3icons-swift` (already created, fresh git repo on branch `main`, containing only `docs/superpowers/`).

**Spec:** `docs/superpowers/specs/2026-05-25-web3icons-swift-design.md`

**Conventions for every commit message:** end with
```
Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>
```

---

## Task 1: Buildable package skeleton

Establish a package that builds and tests green before any icons exist. `PathExtensions.swift` (carried verbatim from lucide-swift) is added now because some generated icons — e.g. `apechain` — call its `cwStrokedPath`/`ccwStrokedPath` helpers, so it must compile alongside the generated output in Task 3.

**Files:**
- Create: `Package.swift`
- Create: `.gitignore`
- Create: `LICENSE`
- Create: `Sources/Web3Icons/PathExtensions.swift`
- Create: `Tests/Web3IconsTests/PlaceholderTests.swift`

- [ ] **Step 1: Create `Package.swift`**

```swift
// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "web3icons-swift",
    platforms: [
        .iOS(.v17),
        .macOS(.v14),
    ],
    products: [
        .library(name: "Web3Icons", targets: ["Web3Icons"]),
    ],
    targets: [
        .target(name: "Web3Icons"),
        .testTarget(name: "Web3IconsTests", dependencies: ["Web3Icons"]),
    ]
)
```

- [ ] **Step 2: Create `.gitignore`**

```gitignore
# macOS
.DS_Store

# Swift Package Manager
.build/
.swiftpm/
Packages/
Package.resolved

# Generator staging
.tmp-icons/

# Xcode
*.xcodeproj
xcuserdata/
DerivedData/

# Credentials
.netrc
```

- [ ] **Step 3: Create `LICENSE` (MIT)**

```
MIT License

Copyright (c) 2026 Antoni Silvestrovic

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

- [ ] **Step 4: Create `Sources/Web3Icons/PathExtensions.swift`** (verbatim port from lucide-swift)

```swift
import SwiftUI
import CoreGraphics

// Helpers ported from the svg-to-swiftui project's visual-tests template:
// https://github.com/bring-shrubbery/SVG-to-SwiftUI/blob/main/packages/svg-to-swiftui-core/visual-tests/swift-template.swift
//
// The generator emits calls to `cwStrokedPath(_:)` and `ccwStrokedPath(_:)`
// for any icon whose source SVG uses strokes (e.g. the `apechain` network),
// so consumers must provide these on Path.

extension Path {
    func cwStrokedPath(_ style: StrokeStyle) -> Path {
        strokedNormalized(style, targetClockwise: true)
    }

    func ccwStrokedPath(_ style: StrokeStyle) -> Path {
        strokedNormalized(style, targetClockwise: false)
    }

    private func strokedNormalized(_ style: StrokeStyle, targetClockwise: Bool) -> Path {
        let stroked = cgPath.copy(
            strokingWithWidth: style.lineWidth,
            lineCap: style.lineCap,
            lineJoin: style.lineJoin,
            miterLimit: style.miterLimit
        )

        var subpathCount = 0
        stroked.applyWithBlock { ptr in
            if ptr.pointee.type == .moveToPoint { subpathCount += 1 }
        }

        // Multi-contour outlines (from closed source paths) have intentional
        // inner contours whose winding must be preserved.
        guard subpathCount == 1 else { return Path(stroked) }

        // Sample anchor points and compute the signed area to determine winding.
        var trail: [CGPoint] = []
        stroked.applyWithBlock { ptr in
            let elem = ptr.pointee
            switch elem.type {
            case .moveToPoint:        trail.append(elem.points[0])
            case .addLineToPoint:     trail.append(elem.points[0])
            case .addQuadCurveToPoint: trail.append(elem.points[1])
            case .addCurveToPoint:    trail.append(elem.points[2])
            default: break
            }
        }

        var signedArea: CGFloat = 0
        for i in 0..<trail.count {
            let j = (i + 1) % trail.count
            signedArea += trail[i].x * trail[j].y - trail[j].x * trail[i].y
        }

        let isClockwise = signedArea > 0
        if isClockwise == targetClockwise { return Path(stroked) }
        return Path(reverseCGPath(stroked))
    }
}

private func reverseCGPath(_ path: CGPath) -> CGPath {
    struct Element {
        var type: CGPathElementType
        var points: [CGPoint]
    }
    var elements: [Element] = []
    path.applyWithBlock { ptr in
        let elem = ptr.pointee
        var pts: [CGPoint] = []
        switch elem.type {
        case .moveToPoint, .addLineToPoint:
            pts = [elem.points[0]]
        case .addQuadCurveToPoint:
            pts = [elem.points[0], elem.points[1]]
        case .addCurveToPoint:
            pts = [elem.points[0], elem.points[1], elem.points[2]]
        case .closeSubpath:
            break
        @unknown default:
            break
        }
        elements.append(Element(type: elem.type, points: pts))
    }

    let result = CGMutablePath()
    var idx = 0
    while idx < elements.count {
        guard elements[idx].type == .moveToPoint else { idx += 1; continue }

        var trail: [CGPoint] = [elements[idx].points[0]]
        var commands: [Element] = []
        var hasClose = false
        var k = idx + 1

        while k < elements.count && elements[k].type != .moveToPoint {
            let elem = elements[k]
            switch elem.type {
            case .addLineToPoint:
                trail.append(elem.points[0]); commands.append(elem)
            case .addQuadCurveToPoint:
                trail.append(elem.points[1]); commands.append(elem)
            case .addCurveToPoint:
                trail.append(elem.points[2]); commands.append(elem)
            case .closeSubpath:
                hasClose = true
            default:
                break
            }
            k += 1
        }

        result.move(to: trail[trail.count - 1])
        for ri in stride(from: commands.count - 1, through: 0, by: -1) {
            let cmd = commands[ri]
            let toPoint = trail[ri]
            switch cmd.type {
            case .addLineToPoint:
                result.addLine(to: toPoint)
            case .addQuadCurveToPoint:
                result.addQuadCurve(to: toPoint, control: cmd.points[0])
            case .addCurveToPoint:
                result.addCurve(to: toPoint, control1: cmd.points[1], control2: cmd.points[0])
            default:
                break
            }
        }
        if hasClose { result.closeSubpath() }
        idx = k
    }
    return result
}
```

- [ ] **Step 5: Create `Tests/Web3IconsTests/PlaceholderTests.swift`** (temporary — removed in Task 4)

```swift
import Testing
@testable import Web3Icons

// Placeholder so the test target is non-empty before generated symbols exist.
// Removed in Task 4 once real view tests are added.
@Test func moduleCompiles() {
    #expect(Bool(true))
}
```

- [ ] **Step 6: Build and test**

Run: `cd /Users/antoni/Projects/web3icons-swift && swift build`
Expected: `Build complete!`

Run: `swift test`
Expected: 1 test, passing (`moduleCompiles`).

- [ ] **Step 7: Commit**

```bash
cd /Users/antoni/Projects/web3icons-swift
git add Package.swift .gitignore LICENSE Sources/Web3Icons/PathExtensions.swift Tests/Web3IconsTests/PlaceholderTests.swift
git commit -m "Add buildable package skeleton

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>"
```

---

## Task 2: Icon generator (TDD on pure helpers)

Write the full generator. Its pure functions (`parseArgs`, `toPascalCase`, `makeIdentifiers`, `CATEGORIES`) are covered by unit tests written first; the npm/conversion pipeline is exercised end-to-end in Task 3.

**Files:**
- Create: `Tools/generate-icons.test.mjs`
- Create: `Tools/generate-icons.mjs`

- [ ] **Step 1: Write the failing unit test `Tools/generate-icons.test.mjs`**

```javascript
// Unit tests for the pure functions exported from generate-icons.mjs.
// Run with: node --test Tools/generate-icons.test.mjs

import { test } from 'node:test'
import assert from 'node:assert/strict'

import {
  parseArgs,
  toPascalCase,
  makeIdentifiers,
  CATEGORIES,
} from './generate-icons.mjs'

// ─── parseArgs ─────────────────────────────────────────────────────────────

test('parseArgs: --check', () => {
  assert.deepEqual(parseArgs(['--check']), { mode: 'check', version: null })
})

test('parseArgs: --apply', () => {
  assert.deepEqual(parseArgs(['--apply']), { mode: 'apply', version: null })
})

test('parseArgs: --apply --version', () => {
  assert.deepEqual(
    parseArgs(['--apply', '--version', '4.0.51']),
    { mode: 'apply', version: '4.0.51' }
  )
})

test('parseArgs: --help and -h both set help mode', () => {
  assert.deepEqual(parseArgs(['--help']), { mode: 'help', version: null })
  assert.deepEqual(parseArgs(['-h']), { mode: 'help', version: null })
})

test('parseArgs: empty argv leaves mode null', () => {
  assert.deepEqual(parseArgs([]), { mode: null, version: null })
})

test('parseArgs: unknown argument throws', () => {
  assert.throws(() => parseArgs(['--banana']), /unknown argument: --banana/)
})

// ─── toPascalCase ──────────────────────────────────────────────────────────

test('toPascalCase: simple kebab', () => {
  assert.equal(toPascalCase('ethereum'), 'Ethereum')
  assert.equal(toPascalCase('ame-chain'), 'AmeChain')
  assert.equal(toPascalCase('binance-smart-chain'), 'BinanceSmartChain')
})

test('toPascalCase: all-caps tickers pass through unchanged', () => {
  assert.equal(toPascalCase('BTC'), 'BTC')
  assert.equal(toPascalCase('1INCH'), '1INCH')
  assert.equal(toPascalCase('0X0'), '0X0')
})

test('toPascalCase: strips non-alphanumerics and empty segments', () => {
  assert.equal(toPascalCase('a--b'), 'AB')
  assert.equal(toPascalCase("foo'bar"), 'Foobar')
})

// ─── makeIdentifiers ───────────────────────────────────────────────────────

test('makeIdentifiers: token ticker', () => {
  assert.deepEqual(makeIdentifiers('tokens', 'BTC'), {
    structName: 'TokenBTC', caseName: 'tokenBTC', rawValue: 'token/BTC',
  })
})

test('makeIdentifiers: token with leading digit', () => {
  assert.deepEqual(makeIdentifiers('tokens', '1INCH'), {
    structName: 'Token1INCH', caseName: 'token1INCH', rawValue: 'token/1INCH',
  })
})

test('makeIdentifiers: kebab network', () => {
  assert.deepEqual(makeIdentifiers('networks', 'ame-chain'), {
    structName: 'NetworkAmeChain', caseName: 'networkAmeChain', rawValue: 'network/ame-chain',
  })
})

test('makeIdentifiers: category prefix disambiguates cross-category clashes', () => {
  assert.equal(makeIdentifiers('exchanges', '1inch').structName, 'Exchange1Inch')
  assert.equal(makeIdentifiers('tokens', '1INCH').structName, 'Token1INCH')
})

test('makeIdentifiers: unknown category throws', () => {
  assert.throws(() => makeIdentifiers('coins', 'BTC'), /unknown category: coins/)
})

test('CATEGORIES: exactly the four expected categories', () => {
  assert.deepEqual(Object.keys(CATEGORIES).sort(),
    ['exchanges', 'networks', 'tokens', 'wallets'])
})
```

- [ ] **Step 2: Run the test to verify it fails**

Run: `cd /Users/antoni/Projects/web3icons-swift && node --test Tools/generate-icons.test.mjs`
Expected: FAIL — cannot find module `./generate-icons.mjs`.

- [ ] **Step 3: Write `Tools/generate-icons.mjs`** (complete file)

```javascript
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
```

- [ ] **Step 4: Run the unit tests to verify they pass**

Run: `cd /Users/antoni/Projects/web3icons-swift && node --test Tools/generate-icons.test.mjs`
Expected: PASS — all tests green (16 tests).

- [ ] **Step 5: Confirm `--help` works**

Run: `node Tools/generate-icons.mjs --help`
Expected: prints the usage block, exit 0.

- [ ] **Step 6: Commit**

```bash
cd /Users/antoni/Projects/web3icons-swift
git add Tools/generate-icons.mjs Tools/generate-icons.test.mjs
git commit -m "Add icon generator and unit tests

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>"
```

---

## Task 3: Generate the icon surface

Run the generator against the pinned upstream version to produce all ~1,810 icon structs plus the enum and version files, then confirm the package still builds. Requires network access (npm).

**Files (all generated — do not hand-edit):**
- Create: `Sources/Web3Icons/Icons/*.swift` (~1,810 files)
- Create: `Sources/Web3Icons/Web3Icon.swift`
- Create: `Sources/Web3Icons/Web3IconsVersion.swift`
- Create: `Tools/web3icons-version.json`

- [ ] **Step 1: Run the generator (pinned to the version validated in the spec)**

Run: `cd /Users/antoni/Projects/web3icons-swift && node Tools/generate-icons.mjs --apply --version 4.0.51`
Expected: prints `Discovered 1810 icons.` then `Converted 1810 icons.` and the three `Wrote …` lines. Exit 0.
Note: `svg-to-swiftui-core` prints a few `Element <defs> is not supported!` warnings to stderr for the 4 icons that ship a `<defs>` block (`TokenAPE`, `NetworkApechain`, `WalletRabby`, `WalletTokenPocket`). These are warnings, not failures — the visible paths still convert. If instead the run ends with `N icon(s) failed to convert`, stop and investigate the listed icons before continuing.

- [ ] **Step 2: Sanity-check the generated output**

Run:
```bash
ls Sources/Web3Icons/Icons | wc -l
cat Tools/web3icons-version.json
head -8 Sources/Web3Icons/Web3Icon.swift
grep -c '    case ' Sources/Web3Icons/Web3Icon.swift
```
Expected: ~1810 files; JSON shows `"version": "4.0.51"`; the enum header reads `// GENERATED FROM @web3icons/core@4.0.51 — DO NOT EDIT`; the case count matches the file count (~1810).

- [ ] **Step 3: Build the package**

Run: `swift build`
Expected: `Build complete!` (the generated icon structs + enum + `Web3IconsVersion` + `PathExtensions` all compile; the `apechain`/`SENSE` stroke icons resolve `cwStrokedPath`/`ccwStrokedPath` from `PathExtensions.swift`).
If a generated struct fails to compile, note the icon name — it indicates an SVG feature `svg-to-swiftui-core` mis-handled; capture the failure for review rather than hand-editing the generated file.

- [ ] **Step 4: Commit the generated surface**

```bash
cd /Users/antoni/Projects/web3icons-swift
git add Sources/Web3Icons/Icons Sources/Web3Icons/Web3Icon.swift Sources/Web3Icons/Web3IconsVersion.swift Tools/web3icons-version.json
git commit -m "Generate web3icons mono surface from @web3icons/core@4.0.51

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>"
```

---

## Task 4: `Web3Icons` View

Add the public View that fills the selected icon, plus its tests. This is the first task that needs the generated `Web3Icon` enum (Task 3).

**Files:**
- Create: `Sources/Web3Icons/Web3Icons.swift`
- Create: `Tests/Web3IconsTests/Web3IconsViewTests.swift`
- Delete: `Tests/Web3IconsTests/PlaceholderTests.swift`

- [ ] **Step 1: Write the failing view test `Tests/Web3IconsTests/Web3IconsViewTests.swift`**

```swift
import Testing
import SwiftUI
@testable import Web3Icons

@Test func web3IconsIsConstructible() {
    let _ = Web3Icons(.tokenBTC)
}

@Test func stringInitResolvesKnownRawValue() {
    #expect(Web3Icons("token/BTC") != nil)
    #expect(Web3Icons("network/ethereum") != nil)
    #expect(Web3Icons("wallet/phantom") != nil)
    #expect(Web3Icons("exchange/uniswap") != nil)
}

@Test func stringInitReturnsNilForUnknownRawValue() {
    #expect(Web3Icons("definitely/not-a-real-icon") == nil)
    #expect(Web3Icons("BTC") == nil)   // missing category prefix
    #expect(Web3Icons("") == nil)
}

@Test func bodyProducesNonEmptyPathForRepresentativeIcons() {
    let rect = CGRect(x: 0, y: 0, width: 24, height: 24)
    #expect(!Web3Icon.tokenBTC.makePath(in: rect).isEmpty)
    #expect(!Web3Icon.networkEthereum.makePath(in: rect).isEmpty)
}
```

- [ ] **Step 2: Run the test to verify it fails**

Run: `cd /Users/antoni/Projects/web3icons-swift && swift test --filter Web3IconsViewTests`
Expected: FAIL — compile error, `cannot find 'Web3Icons' in scope` (the View type does not exist yet).

- [ ] **Step 3: Delete the placeholder test**

```bash
rm Tests/Web3IconsTests/PlaceholderTests.swift
```

- [ ] **Step 4: Write `Sources/Web3Icons/Web3Icons.swift`**

```swift
import SwiftUI

/// A web3icons mono icon as a SwiftUI view. The icon is a filled `Shape`; its
/// color comes from `.foregroundStyle` and its size from `.frame` (it keeps a
/// 1:1 aspect ratio).
///
///     Web3Icons(.tokenBTC)
///         .foregroundStyle(.orange)
///         .frame(width: 32, height: 32)
public struct Web3Icons: View {
    private let icon: Web3Icon

    public init(_ icon: Web3Icon) {
        self.icon = icon
    }

    /// Look up an icon by its raw value, e.g. `"token/BTC"`,
    /// `"network/ethereum"`. Returns `nil` if no icon matches.
    public init?(_ rawValue: String) {
        guard let icon = Web3Icon(rawValue: rawValue) else { return nil }
        self.init(icon)
    }

    public var body: some View {
        // web3icons mono are solid filled shapes (svg-to-swiftui-core reverses
        // inner contours, so non-zero winding renders holes correctly).
        IconShape(icon: icon)
            .fill(style: FillStyle(eoFill: false))
            .aspectRatio(1, contentMode: .fit)
    }
}

private struct IconShape: Shape {
    let icon: Web3Icon
    func path(in rect: CGRect) -> Path { icon.makePath(in: rect) }
}
```

- [ ] **Step 5: Run the test to verify it passes**

Run: `swift test --filter Web3IconsViewTests`
Expected: PASS — 4 tests green.

- [ ] **Step 6: Commit**

```bash
cd /Users/antoni/Projects/web3icons-swift
git add Sources/Web3Icons/Web3Icons.swift Tests/Web3IconsTests/Web3IconsViewTests.swift
git rm Tests/Web3IconsTests/PlaceholderTests.swift
git commit -m "Add Web3Icons fill-rendering view

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>"
```

---

## Task 5: Smoke and enum tests

Cover path rendering across all four categories (plus the stroke-using `apechain` that exercises `PathExtensions`), and assert the enum/version invariants.

**Files:**
- Create: `Tests/Web3IconsTests/PathSmokeTests.swift`
- Create: `Tests/Web3IconsTests/Web3IconTests.swift`

- [ ] **Step 1: Write `Tests/Web3IconsTests/PathSmokeTests.swift`**

```swift
import Testing
import SwiftUI
@testable import Web3Icons

private let rect = CGRect(x: 0, y: 0, width: 24, height: 24)

@Test func tokenPathIsNonEmpty() {
    #expect(!Web3Icon.tokenBTC.makePath(in: rect).isEmpty)
}

@Test func networkPathIsNonEmpty() {
    #expect(!Web3Icon.networkEthereum.makePath(in: rect).isEmpty)
}

@Test func walletPathIsNonEmpty() {
    #expect(!Web3Icon.walletPhantom.makePath(in: rect).isEmpty)
}

@Test func exchangePathIsNonEmpty() {
    #expect(!Web3Icon.exchangeUniswap.makePath(in: rect).isEmpty)
}

// networkEthereum combines four paths with fill-rule="evenodd"; exercises the
// multi-contour / hole handling in the generated output.
@Test func multiPathEvenoddIconRenders() {
    #expect(!Web3Icon.networkEthereum.makePath(in: rect).isEmpty)
}

// apechain's source SVG uses strokes, so its generated path calls
// Path.cwStrokedPath(_:)/ccwStrokedPath(_:) from PathExtensions.swift. If this
// fails after a regen, the helper extension has drifted from what
// svg-to-swiftui-core emits.
@Test func strokedPathIconRenders() {
    #expect(!Web3Icon.networkApechain.makePath(in: rect).isEmpty)
}
```

- [ ] **Step 2: Write `Tests/Web3IconsTests/Web3IconTests.swift`**

```swift
import Testing
import Foundation
@testable import Web3Icons

@Test func haveLotsOfIcons() {
    #expect(Web3Icon.allCases.count > 1500)
}

@Test func iconRawValuesAreUnique() {
    let raws = Web3Icon.allCases.map(\.rawValue)
    #expect(raws.count == Set(raws).count)
}

@Test func everyRawValueIsCategoryPrefixed() {
    let prefixes = ["token/", "network/", "wallet/", "exchange/"]
    for icon in Web3Icon.allCases {
        #expect(prefixes.contains { icon.rawValue.hasPrefix($0) })
    }
}

@Test func versionConstantIsPopulated() {
    #expect(!Web3IconsVersion.web3icons.isEmpty)
    #expect(Web3IconsVersion.web3icons.contains("."))
}

// The Swift constant and the JSON state file are both written by
// Tools/generate-icons.mjs; this guards against a manual edit drifting one.
@Test func versionConstantMatchesJsonFile() throws {
    let repoRoot = URL(fileURLWithPath: #filePath)
        .deletingLastPathComponent()  // Tests/Web3IconsTests
        .deletingLastPathComponent()  // Tests
        .deletingLastPathComponent()  // repo root
    let versionFile = repoRoot.appendingPathComponent("Tools/web3icons-version.json")
    let data = try Data(contentsOf: versionFile)
    let decoded = try JSONDecoder().decode([String: String].self, from: data)
    #expect(decoded["version"] == Web3IconsVersion.web3icons)
}
```

- [ ] **Step 3: Run the tests to verify they pass**

Run: `cd /Users/antoni/Projects/web3icons-swift && swift test --filter PathSmokeTests && swift test --filter Web3IconTests`
Expected: PASS — all smoke + enum tests green.

- [ ] **Step 4: Commit**

```bash
cd /Users/antoni/Projects/web3icons-swift
git add Tests/Web3IconsTests/PathSmokeTests.swift Tests/Web3IconsTests/Web3IconTests.swift
git commit -m "Add smoke and enum tests

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>"
```

---

## Task 6: Snapshot tests and baselines

Render every icon to a committed PNG baseline using a **fill** (matching the View). Record once, then verify compare mode passes.

**Files:**
- Create: `Tests/Web3IconsTests/SnapshotTests.swift`
- Create: `Tests/Web3IconsTests/__Snapshots__/*.png` (~1,810 baselines, recorded)

- [ ] **Step 1: Write `Tests/Web3IconsTests/SnapshotTests.swift`**

```swift
import Testing
import SwiftUI
import CoreGraphics
import Foundation
import ImageIO
@testable import Web3Icons

// Pixel snapshot tests for every web3icon. Renders each icon's Path through
// CoreGraphics with a non-zero (winding) fill — the same fill the Web3Icons
// View applies (black on white) — and compares the resulting PNG bytes against
// a committed baseline under __Snapshots__/.
//
// Recording mode: set SNAPSHOT_RECORD=1 to (re)write every baseline. Recording
// is silent so it can run as a pipeline step after generator regeneration.
//
// Compare mode (default): a missing baseline records an Issue and fails; a byte
// mismatch fails with a hint about SNAPSHOT_RECORD.

private let snapshotDir = URL(fileURLWithPath: #filePath)
    .deletingLastPathComponent()
    .appendingPathComponent("__Snapshots__", isDirectory: true)

private let renderSize = 64

private enum RenderError: Error {
    case contextFailed
    case imageFailed
    case encodeFailed
}

private func renderPNG(for icon: Web3Icon) throws -> Data {
    let size = renderSize
    let rect = CGRect(x: 0, y: 0, width: CGFloat(size), height: CGFloat(size))
    let path = icon.makePath(in: rect)

    let colorSpace = CGColorSpaceCreateDeviceRGB()
    guard let ctx = CGContext(
        data: nil,
        width: size,
        height: size,
        bitsPerComponent: 8,
        bytesPerRow: size * 4,
        space: colorSpace,
        bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue
    ) else {
        throw RenderError.contextFailed
    }

    ctx.setFillColor(red: 1, green: 1, blue: 1, alpha: 1)
    ctx.fill(rect)

    // SVG/SwiftUI place origin at top-left; CGContext at bottom-left. Flip Y
    // so the rendered image matches what consumers actually see.
    ctx.translateBy(x: 0, y: CGFloat(size))
    ctx.scaleBy(x: 1, y: -1)

    // web3icons mono are filled shapes; fill with non-zero winding to match the
    // Web3Icons View (svg-to-swiftui-core reverses inner contours for holes).
    ctx.addPath(path.cgPath)
    ctx.setFillColor(red: 0, green: 0, blue: 0, alpha: 1)
    ctx.fillPath(using: .winding)

    guard let image = ctx.makeImage() else { throw RenderError.imageFailed }

    let data = NSMutableData()
    guard let dest = CGImageDestinationCreateWithData(data, "public.png" as CFString, 1, nil) else {
        throw RenderError.encodeFailed
    }
    CGImageDestinationAddImage(dest, image, nil)
    guard CGImageDestinationFinalize(dest) else { throw RenderError.encodeFailed }

    return data as Data
}

private func baselineName(for icon: Web3Icon) -> String {
    // Raw values look like "token/BTC"; "/" is illegal in filenames.
    icon.rawValue.replacingOccurrences(of: "/", with: "-")
}

private func assertSnapshot(_ icon: Web3Icon) throws {
    let name = baselineName(for: icon)
    let actual = try renderPNG(for: icon)
    let baselineURL = snapshotDir.appendingPathComponent("\(name).png")
    let record = ProcessInfo.processInfo.environment["SNAPSHOT_RECORD"] == "1"

    if record {
        try FileManager.default.createDirectory(at: snapshotDir, withIntermediateDirectories: true)
        try actual.write(to: baselineURL)
        return
    }

    guard FileManager.default.fileExists(atPath: baselineURL.path) else {
        Issue.record("No snapshot baseline for \(name). Run tests with SNAPSHOT_RECORD=1 to create one.")
        return
    }

    let expected = try Data(contentsOf: baselineURL)
    #expect(
        actual == expected,
        "Snapshot mismatch for \(name). Re-run with SNAPSHOT_RECORD=1 if the change is intentional."
    )
}

@Test(arguments: Web3Icon.allCases)
func snapshot(_ icon: Web3Icon) throws {
    try assertSnapshot(icon)
}
```

- [ ] **Step 2: Record the baselines**

Run: `cd /Users/antoni/Projects/web3icons-swift && SNAPSHOT_RECORD=1 swift test --filter SnapshotTests`
Expected: passes silently; ~1,810 PNGs written under `Tests/Web3IconsTests/__Snapshots__/`.

Run: `ls Tests/Web3IconsTests/__Snapshots__ | wc -l`
Expected: ~1810.

- [ ] **Step 3: Spot-check a few baselines visually**

Open a handful of recorded PNGs (a normal token, plus the 4 `<defs>` icons whose clip/gradient is dropped) to confirm they look like recognizable glyphs and not empty/garbage:
```bash
open Tests/Web3IconsTests/__Snapshots__/token-BTC.png \
     Tests/Web3IconsTests/__Snapshots__/network-ethereum.png \
     Tests/Web3IconsTests/__Snapshots__/token-APE.png \
     Tests/Web3IconsTests/__Snapshots__/network-apechain.png \
     Tests/Web3IconsTests/__Snapshots__/wallet-rabby.png \
     Tests/Web3IconsTests/__Snapshots__/wallet-token-pocket.png
```
Expected: each shows a solid black-on-white icon. (Manual check; if one is clearly broken, note it for follow-up — it does not block the plan.)

- [ ] **Step 4: Verify compare mode passes**

Run: `swift test --filter SnapshotTests`
Expected: PASS — every icon matches its just-recorded baseline.

- [ ] **Step 5: Commit**

```bash
cd /Users/antoni/Projects/web3icons-swift
git add Tests/Web3IconsTests/SnapshotTests.swift Tests/Web3IconsTests/__Snapshots__
git commit -m "Add pixel snapshot tests and baselines for all icons

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>"
```

---

## Task 7: CI and automation workflows

Port the three lucide-swift workflows, retargeted to `@web3icons/core` and the `Web3Icons` paths.

**Files:**
- Create: `.github/workflows/ci.yml`
- Create: `.github/workflows/update-icons.yml`
- Create: `.github/workflows/release.yml`

- [ ] **Step 1: Create `.github/workflows/ci.yml`**

```yaml
name: CI

on:
  push:
    branches: [main]
  pull_request:

jobs:
  build-test:
    name: Build & Test
    runs-on: macos-15
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Select Xcode
        uses: maxim-lobanov/setup-xcode@v1
        with:
          xcode-version: latest-stable

      - name: Swift version
        run: swift --version

      - name: Build
        run: swift build

      - name: Test
        run: swift test

  generator-test:
    name: Generator (Node)
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v4

      - name: Set up Node
        uses: actions/setup-node@v4
        with:
          node-version: '24'

      - name: Run generator unit tests
        run: node --test Tools/generate-icons.test.mjs
```

- [ ] **Step 2: Create `.github/workflows/update-icons.yml`**

```yaml
name: Update web3icons

on:
  schedule:
    - cron: '0 6 * * *'
  workflow_dispatch:
    inputs:
      version:
        description: '@web3icons/core version (defaults to latest)'
        required: false
        type: string

jobs:
  update:
    # macos-15 because the snapshot record step needs CoreGraphics/ImageIO,
    # which are Apple-only. Node generation runs here too.
    runs-on: macos-15
    permissions:
      contents: write
      pull-requests: write
    steps:
      - uses: actions/checkout@v4

      - uses: actions/setup-node@v4
        with:
          node-version: '24'

      - name: Select Xcode
        uses: maxim-lobanov/setup-xcode@v1
        with:
          xcode-version: latest-stable

      - name: Check for new version
        id: check
        run: node Tools/generate-icons.mjs --check
        continue-on-error: true

      - name: Apply update
        id: apply
        if: steps.check.outcome == 'failure' || inputs.version != ''
        run: node Tools/generate-icons.mjs --apply ${{ inputs.version && format('--version {0}', inputs.version) || '' }}

      - name: Record snapshot baselines
        if: steps.check.outcome == 'failure' || inputs.version != ''
        env:
          SNAPSHOT_RECORD: '1'
        run: swift test --filter SnapshotTests

      - name: Open pull request
        if: steps.check.outcome == 'failure' || inputs.version != ''
        uses: peter-evans/create-pull-request@v7
        with:
          branch: auto/web3icons-update
          commit-message: 'Update web3icons to ${{ steps.apply.outputs.version }}'
          title: 'Update web3icons to ${{ steps.apply.outputs.version }}'
          body: |
            Automated update from `update-icons.yml`.

            See `Tools/web3icons-version.json` for the new pinned version.
            Snapshot PNGs under `Tests/Web3IconsTests/__Snapshots__/` are
            re-recorded automatically — review the visual diff to spot any
            unexpected rendering changes.
          add-paths: |
            Sources/Web3Icons/
            Tools/web3icons-version.json
            Tests/Web3IconsTests/__Snapshots__/
```

- [ ] **Step 3: Create `.github/workflows/release.yml`**

```yaml
name: Release

on:
  push:
    branches: [main]
    paths:
      - 'Tools/web3icons-version.json'
  workflow_dispatch:

jobs:
  release:
    runs-on: ubuntu-latest
    permissions:
      contents: write
    steps:
      - uses: actions/checkout@v4
        with:
          fetch-depth: 0

      - name: Read version
        id: ver
        run: |
          VERSION=$(jq -r .version Tools/web3icons-version.json)
          REVISION=$(jq -r '.revision // empty' Tools/web3icons-version.json)
          TAG="$VERSION${REVISION:+-rev$REVISION}"
          echo "tag=$TAG" >> "$GITHUB_OUTPUT"
          echo "version=$VERSION" >> "$GITHUB_OUTPUT"

      - name: Skip if tag exists
        id: tagcheck
        run: |
          if git rev-parse "refs/tags/${{ steps.ver.outputs.tag }}" >/dev/null 2>&1; then
            echo "Tag ${{ steps.ver.outputs.tag }} already exists; skipping."
            echo "skip=true" >> "$GITHUB_OUTPUT"
          else
            echo "skip=false" >> "$GITHUB_OUTPUT"
          fi

      - name: Tag and release
        if: steps.tagcheck.outputs.skip == 'false'
        env:
          GH_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        run: |
          git config user.name "github-actions[bot]"
          git config user.email "41898282+github-actions[bot]@users.noreply.github.com"
          git tag -a "${{ steps.ver.outputs.tag }}" -m "Release ${{ steps.ver.outputs.tag }}"
          git push origin "${{ steps.ver.outputs.tag }}"
          gh release create "${{ steps.ver.outputs.tag }}" \
            --title "${{ steps.ver.outputs.tag }}" \
            --notes "web3icons mono icons from @web3icons/core@${{ steps.ver.outputs.version }}."
```

- [ ] **Step 4: Validate the YAML parses**

Run (Ruby ships with macOS, so `psych`/`YAML` is available without extra installs):
```bash
cd /Users/antoni/Projects/web3icons-swift
for f in .github/workflows/*.yml; do ruby -ryaml -e "YAML.load_file(ARGV[0])" "$f" && echo "ok: $f"; done
```
Expected: `ok:` for all three files. (If `actionlint` happens to be installed, run `actionlint` too for deeper checks; it is optional.)

- [ ] **Step 5: Commit**

```bash
cd /Users/antoni/Projects/web3icons-swift
git add .github/workflows
git commit -m "Add CI, update, and release workflows

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>"
```

---

## Task 8: README and final verification

Write the README and run the full suite end-to-end.

**Files:**
- Create: `README.md`

- [ ] **Step 1: Create `README.md`**

````markdown
# Web3 Icons for SwiftUI

All ~1,810 **mono** [web3icons](https://github.com/0xa3k5/web3icons) — crypto tokens, networks, wallets, and exchanges — native to SwiftUI.

Each icon is a generated `SwiftUI.Shape` — no SVG library, no XML parser, no image assets. The library is a thin View on top of `Path`, and your icons participate in SwiftUI like any other shape: scale to any size, take color from `.foregroundStyle`, animate, mask, combine.

## Why this library

- **Pure SwiftUI** — every icon is a `Shape` whose `path(in:)` is committed Swift code, generated at build time from the upstream SVG. Nothing is parsed at runtime.
- **Filled, vector, all the way down** — web3icons mono are solid shapes; this library fills them with your foreground style, sharp at any size on any display. No PNG/PDF rasters bundled.
- **Zero runtime dependencies** — depends only on SwiftUI itself.
- **SwiftUI-idiomatic** — `Web3Icons(.tokenBTC).foregroundStyle(.orange).frame(width: 32, height: 32)` works exactly the way you'd expect.
- **Type-safe by default** — the `Web3Icon` enum gives you autocomplete and compile-time guarantees. A runtime-string lookup is also available for dynamic UIs (`Web3Icons("token/BTC")`).
- **Tracks upstream automatically** — a scheduled workflow watches `@web3icons/core` on npm and opens a PR whenever a new release ships. Package versions mirror it exactly.

## Requirements

- iOS 17+ / macOS 14+
- Swift 6.0+ (Xcode 16+)

## Installation

Add the package to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/bring-shrubbery/web3icons-swift.git", from: "4.0.51"),
]
```

Then add `Web3Icons` as a dependency of your target:

```swift
.target(
    name: "YourTarget",
    dependencies: [
        .product(name: "Web3Icons", package: "web3icons-swift"),
    ]
)
```

Or in Xcode: **File → Add Package Dependencies…** and paste the repo URL.

## Usage

```swift
import SwiftUI
import Web3Icons

struct ContentView: View {
    var body: some View {
        Web3Icons(.tokenBTC)
            .foregroundStyle(.orange)
            .frame(width: 32, height: 32)
    }
}
```

Icons are named `<category><Name>`, one flat `Web3Icon` enum across all four categories:

```swift
Web3Icons(.tokenETH)          // crypto tokens — uppercase tickers
Web3Icons(.networkEthereum)   // blockchain networks
Web3Icons(.walletPhantom)     // wallets
Web3Icons(.exchangeUniswap)   // exchanges
```

Dynamic lookup by raw value (`"<category>/<name>"`, returns `nil` if unknown):

```swift
if let icon = Web3Icons("token/BTC") {
    icon.foregroundStyle(.primary)
}
```

## How it's generated

`Tools/generate-icons.mjs` installs [`@web3icons/core`](https://www.npmjs.com/package/@web3icons/core) and [`svg-to-swiftui-core`](https://github.com/bring-shrubbery/SVG-to-SwiftUI), converts every mono SVG into a Swift `Shape`, and writes the `Web3Icon` enum. Run `node Tools/generate-icons.mjs --help` for usage.

## Credits

- Icons: [web3icons](https://github.com/0xa3k5/web3icons) by 0xa3k5 (MIT).
- SVG → SwiftUI conversion: [svg-to-swiftui](https://github.com/bring-shrubbery/SVG-to-SwiftUI).

## License

MIT — see [LICENSE](LICENSE).
````

- [ ] **Step 2: Run the full verification suite**

Run:
```bash
cd /Users/antoni/Projects/web3icons-swift
swift build
swift test
node --test Tools/generate-icons.test.mjs
```
Expected: `Build complete!`; all Swift tests pass (view, smoke, enum, and ~1,810 snapshot cases); all Node generator tests pass.

- [ ] **Step 3: Commit**

```bash
cd /Users/antoni/Projects/web3icons-swift
git add README.md
git commit -m "Add README

Co-Authored-By: Claude Opus 4.7 (1M context) <noreply@anthropic.com>"
```

- [ ] **Step 4: Confirm a clean tree**

Run: `git status --short`
Expected: empty (everything committed).

---

## Done criteria

- `swift build` and `swift test` pass on macOS; `node --test Tools/generate-icons.test.mjs` passes.
- `Web3Icon.allCases.count` is ~1,810, spanning `token/`, `network/`, `wallet/`, `exchange/`.
- `Web3Icons(.tokenBTC).foregroundStyle(.orange).frame(width: 32, height: 32)` renders a filled icon.
- Every icon has a committed PNG snapshot baseline; compare mode is green.
- The three workflows are present and parse.
