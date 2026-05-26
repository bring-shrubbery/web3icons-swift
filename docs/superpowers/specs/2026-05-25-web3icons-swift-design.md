# web3icons-swift — Design

**Date:** 2026-05-25
**Status:** Approved design, pending implementation plan

## Summary

`web3icons-swift` is a SwiftUI package that exposes the **mono** variant of every
[web3icons](https://github.com/0xa3k5/web3icons) icon — tokens, networks, wallets,
and exchanges — as native `SwiftUI.Shape`-backed views. It is a direct port of the
[`lucide-swift`](../../../../lucide-swift) project: icons are generated at build time
from the upstream package via `svg-to-swiftui-core`, committed as Swift source, and
rendered with no runtime SVG parsing and no asset bundles.

The package depends only on SwiftUI. Targets iOS 17+ / macOS 14+, Swift 6.0+.

## Source of icons

- Upstream npm package: **`@web3icons/core`** (MIT licensed). Latest at design time: `4.0.51`.
- SVGs ship as ES modules, not raw `.svg` files: `dist/svgs/<category>/<variant>/<name>.svg.js`,
  each `export default '<svg …></svg>'`.
- We consume **only the `mono` variant** of four categories:

  | Category    | Path segment | Mono icon count |
  |-------------|--------------|-----------------|
  | tokens      | `tokens`     | 1,535           |
  | networks    | `networks`   | 203             |
  | wallets     | `wallets`    | 45              |
  | exchanges   | `exchanges`  | 27              |
  | **total**   |              | **~1,810**      |

  (Counts are from `@web3icons/core@4.0.51` and will track upstream.)

- All mono SVGs use the same `0 0 24 24` viewBox as Lucide.

## The fundamental difference from lucide-swift: fill vs. stroke

Lucide icons are **stroked** outlines (the `Lucide` View applies `.stroke(StrokeStyle(lineWidth: 2, …))`).
web3icons mono icons are **solid filled** shapes — `<path fill="#fff" …>`, frequently with
`fill-rule="evenodd"` holes. `svg-to-swiftui-core` bakes the fill geometry directly, reversing
inner contours via `Path.addReversedPath(_:)` so that the default **non-zero winding** fill renders
holes correctly. Concretely this means:

- The `Web3Icons` View renders the shape with a **fill** using the foreground style. There is **no
  `lineWidth` modifier** — it is meaningless for filled shapes.
- Color comes from `.foregroundStyle(...)`, size from `.frame(...)` / `.aspectRatio`.
- Snapshot tests render via `CGContext.fillPath()` (non-zero), not `strokePath()`.
- Of the ~1,810 mono icons, only ~2 contain any `stroke=` in their SVG; `svg-to-swiftui-core`
  converts those strokes to baked stroked sub-paths at generation time, so they still render via fill.
- `Sources/Web3Icons/PathExtensions.swift` (the `cwStrokedPath`/`ccwStrokedPath` helpers) is carried
  over **verbatim** from lucide-swift as a safety net for any generator output that calls them. It is
  harmless if unused.

## Public API

A single flat enum with category-prefixed cases, mirroring web3icons' own React component naming
(`TokenBTC`, `NetworkEthereum`, `WalletPhantom`, `ExchangeUniswap`).

```swift
import SwiftUI
import Web3Icons

Web3Icons(.tokenBTC)
    .foregroundStyle(.orange)
    .frame(width: 32, height: 32)

Web3Icons(.networkEthereum)
Web3Icons(.walletPhantom)
Web3Icons(.exchangeUniswap)

// Runtime string lookup (e.g. dynamic UIs):
Web3Icons("token/BTC")        // -> Web3Icons?  (nil if unknown)
```

### Types

```swift
public struct Web3Icons: View {
    public init(_ icon: Web3Icon)
    public init?(_ rawValue: String)     // looks up by raw value, e.g. "token/BTC"
    public var body: some View           // fills IconShape with foreground style, aspectRatio 1
}

public enum Web3Icon: String, CaseIterable, Sendable {
    case tokenBTC = "token/BTC"
    case networkEthereum = "network/ethereum"
    case walletPhantom = "wallet/phantom"
    case exchangeUniswap = "exchange/uniswap"
    // … ~1,810 cases

    func makePath(in rect: CGRect) -> Path    // internal: switch over cases -> StructName().path(in:)
}
```

`Web3Icons` is both the module name and the View type name (the same pattern lucide-swift uses with
`Lucide`).

### Naming rules

For an icon with upstream `category` (singular: `token`/`network`/`wallet`/`exchange`) and `name`:

- **Per-icon Shape struct name** = `PascalCase(category)` + `PascalCase(name)`.
  Examples: `TokenBTC`, `Token1INCH`, `NetworkEthereum`, `NetworkAmeChain`,
  `WalletMyEtherWallet`, `Exchange1inch`. `PascalCase` only uppercases the first letter of each
  `-`-delimited segment, so all-caps tickers like `BTC`/`1INCH`/`0X0` pass through unchanged, and a
  leading digit leaves the rest of its segment as-is (`1inch` → `1inch`).
- **Enum case name** = `category` (lowercase) + `PascalCase(name)`.
  Examples: `tokenBTC`, `token1INCH`, `networkEthereum`, `networkAmeChain`,
  `walletMyEtherWallet`, `exchange1inch`.
- **Raw value** = `"<category>/<name>"` preserving upstream casing.
  Examples: `"token/BTC"`, `"network/ethereum"`, `"wallet/phantom"`, `"exchange/1inch"`.

The category prefix dissolves two upstream naming hazards: tokens whose names start with a digit
(e.g. `1INCH`, `0X0`) become valid Swift identifiers, and cross-category collisions (the exchange
`1inch` vs. the token `1INCH`) become distinct symbols (`Exchange1Inch` vs. `Token1INCH`).

The generator keeps lucide-swift's defensive **case-insensitive struct-name collision guard** and
fails generation if any two icons would produce the same struct name on a case-insensitive filesystem.

## Generator (`Tools/generate-icons.mjs`)

Same structure and modes as lucide-swift's generator, retargeted:

- **Install**: into a temp dir, `npm install @web3icons/core@<version> svg-to-swiftui-core@latest`.
- **Discover**: for each category in `tokens, networks, wallets, exchanges`, glob
  `node_modules/@web3icons/core/dist/svgs/<category>/mono/*.svg.js` (ignore `*.svg.js.map`). Derive
  the icon `name` from the filename (strip `.svg.js`) and the `category` from the path. Obtain the
  SVG string via dynamic `import()` of the module's default export (robust — no regex extraction).
- **Convert**: `svg-to-swiftui-core`'s `convert(svgString, { structName })`; post-process the emitted
  `struct` to `internal struct`; write `Sources/Web3Icons/Icons/<StructName>.swift` with header
  `// GENERATED FROM @web3icons/core@<version> — DO NOT EDIT`.
- **Emit surface**: write `Sources/Web3Icons/Web3Icon.swift` (the enum + `makePath(in:)` switch) and
  `Sources/Web3Icons/Web3IconsVersion.swift` (`public enum Web3IconsVersion { public static let web3icons = "<version>" }`).
- **Modes**:
  - `--check` — compare `Tools/web3icons-version.json` against
    `https://registry.npmjs.org/@web3icons/core/latest`; exit 0 if current, 1 if behind.
  - `--apply [--version X]` — install `@web3icons/core@X` (or `@latest`), regenerate everything,
    update `Tools/web3icons-version.json`. Writes `version=<X>` to `$GITHUB_OUTPUT` when present.
  - `--help`.

Exported helpers (`toPascalCase`, the case-name builder, `parseArgs`) are unit-tested.

## Tests (`Tests/Web3IconsTests/`)

Full parity with lucide-swift's test surface:

- **SnapshotTests** — one committed PNG baseline per icon under
  `Tests/Web3IconsTests/__Snapshots__/<category>-<name>.png` (raw value with `/` replaced by `-`),
  rendered black-on-white at 64px using **`CGContext.fillPath()`** (non-zero winding) to match the
  View's fill. `SNAPSHOT_RECORD=1` (re)records all baselines silently. Compare mode fails on a missing
  baseline or byte mismatch. Iterates `Web3Icon.allCases`.
- **PathSmokeTests** — a representative icon per category (`tokenBTC`, `networkEthereum`,
  `walletMetamask`, `exchangeBybit`) produces a non-empty path; `networkEthereum` (4 sub-paths,
  evenodd) exercises hole handling.
- **Web3IconTests** — `allCases.count > 1500`; raw values unique; `Web3IconsVersion.web3icons`
  populated and contains a `.`; the Swift version constant matches `Tools/web3icons-version.json`.
- **Web3IconsViewTests** — `Web3Icons(.tokenBTC)` and the string init build/produce a body.
- **Generator unit tests** (`Tools/generate-icons.test.mjs`, run with `node --test`) — `toPascalCase`,
  the case-name builder, category prefixing, and `parseArgs`.

## Workflows & project meta

- `.github/workflows/ci.yml` — `swift build` + `swift test` on macOS; `node --test` for the generator.
- `.github/workflows/update-icons.yml` — scheduled (`--check`); on a new `@web3icons/core` release,
  `--apply`, re-record snapshot baselines (`SNAPSHOT_RECORD=1`), and open a PR.
- `.github/workflows/release.yml` — tag + GitHub release when `Tools/web3icons-version.json` changes.
  Package versions mirror `@web3icons/core` exactly.
- `Package.swift` — package `web3icons-swift`; library/target `Web3Icons`; test target
  `Web3IconsTests`; platforms iOS 17 / macOS 14; `swift-tools-version: 6.0`.
- `README.md` — adapted ("Web3 Icons for SwiftUI"): explains fill-based rendering, the four
  categories, install, and per-category usage examples. Repo URLs use the `bring-shrubbery` owner
  (`github.com/bring-shrubbery/web3icons-swift`).
- `LICENSE` — MIT. README credits web3icons (MIT) and the svg-to-swiftui project. (Carried as a new
  file; lucide-swift currently ships no LICENSE.)
- `.gitignore` — ported from lucide-swift (`.build/`, `.tmp-icons/`, etc.).

## Project layout

```
web3icons-swift/
  Package.swift
  README.md
  LICENSE
  .gitignore
  Sources/Web3Icons/
    Web3Icons.swift            # View
    Web3Icon.swift             # GENERATED enum + makePath
    Web3IconsVersion.swift     # GENERATED version constant
    PathExtensions.swift       # ported verbatim
    Icons/<StructName>.swift   # GENERATED, ~1,810 files
  Tests/Web3IconsTests/
    Web3IconsViewTests.swift
    Web3IconTests.swift
    PathSmokeTests.swift
    SnapshotTests.swift
    __Snapshots__/<category>-<name>.png   # ~1,810 baselines
  Tools/
    generate-icons.mjs
    generate-icons.test.mjs
    web3icons-version.json
  .github/workflows/{ci,update-icons,release}.yml
  docs/superpowers/specs/2026-05-25-web3icons-swift-design.md
```

## Out of scope (YAGNI)

- The `branded` and `background` variants (mono only, for now).
- Per-category sub-enums or a category-parameter API (single flat enum chosen).
- A `lineWidth` / stroke-style modifier (icons are filled).
- Upstream icon metadata (`tokens.json` etc.) — the `mono` directories are the canonical set, so
  discovery globs the filesystem directly.

## Risks / validation notes

- **Complex evenodd multi-path icons**: a few icons combine several paths with `fill-rule="evenodd"`.
  `svg-to-swiftui-core`'s contour-reversal handles the common cases, but visual correctness across all
  ~1,810 icons is verified by the committed snapshot baselines — review the recorded PNGs during the
  first generation to spot any mis-filled holes.
- **Unsupported SVG features (4 icons)**: exactly 4 of ~1,810 mono icons (`networks/apechain`,
  `tokens/APE`, `wallets/rabby`, `wallets/token-pocket`) ship a `<defs>` block (clipPath or
  gradient). `svg-to-swiftui-core` emits a stderr warning for `<defs>` but still converts the visible
  `<path>` elements into substantial non-empty paths (41–160 draw commands each). The gradients are
  irrelevant for mono (single foreground color) and the clipPaths are cosmetic, so these icons are
  **included** — no exclusion list is needed. Their snapshot baselines should get an extra glance on
  first recording.
- **Volume**: ~1,810 generated Swift files plus ~1,810 PNG baselines is large but matches lucide-swift
  (1,711 today) and is generated/committed mechanically.
