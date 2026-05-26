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
  // toPascalCase only uppercases the first char of each "-" segment, so a
  // leading digit leaves the rest of the segment as-is ("1inch" -> "1inch").
  // The exchange and the token still get distinct, valid identifiers.
  assert.equal(makeIdentifiers('exchanges', '1inch').structName, 'Exchange1inch')
  assert.equal(makeIdentifiers('tokens', '1INCH').structName, 'Token1INCH')
  assert.notEqual(
    makeIdentifiers('exchanges', '1inch').structName,
    makeIdentifiers('tokens', '1INCH').structName
  )
})

test('makeIdentifiers: unknown category throws', () => {
  assert.throws(() => makeIdentifiers('coins', 'BTC'), /unknown category: coins/)
})

test('CATEGORIES: exactly the four expected categories', () => {
  assert.deepEqual(Object.keys(CATEGORIES).sort(),
    ['exchanges', 'networks', 'tokens', 'wallets'])
})
