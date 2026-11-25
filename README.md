# Homebrew Tap for Apex

This is the official Homebrew tap for [Apex](https://github.com/pensarai/apex), an AI-powered penetration testing CLI tool by Pensar.

## Installation

```bash
brew tap pensarai/apex
brew install apex
```

## Usage

```bash
# Launch the TUI
pensar

# Show help
pensar --help

# Show version
pensar --version
```

## Updating

```bash
brew update
brew upgrade apex
```

## Uninstalling

```bash
brew uninstall apex
brew untap pensarai/apex
```

## Maintaining this tap

`Formula/apex.rb` is written by the `homebrew` job of apex's [Release workflow](https://github.com/pensarai/apex/blob/canary/.github/workflows/release.yml) (`.github/workflows/release.yml`). On every Apex release it regenerates the formula from the release's assets, with each platform's URL and SHA-256 checksum, and commits it here. Do not edit the formula by hand: the next release overwrites any manual change. To change the formula, change the template in that workflow.

## License

MIT
