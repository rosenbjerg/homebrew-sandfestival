# homebrew-sandfestival

Homebrew tap for [Sand Festival](https://github.com/rosenbjerg/SandFestival),
a macOS dashboard for long-running Claude Code sessions.

## Install

```sh
brew install --cask rosenbjerg/sandfestival/sandfestival
```

(The long form auto-taps; you don't need a separate `brew tap` step.)

## Update

```sh
brew upgrade --cask sandfestival
```

## Uninstall

```sh
brew uninstall --cask sandfestival
```

To also remove user data (projects list, preferences, caches):

```sh
brew uninstall --zap --cask sandfestival
```

## Requirements

- macOS 26 (Tahoe) or later
- [Claude Code](https://docs.claude.com/en/docs/claude-code/) on your `PATH`

## Releases

DMGs are built, signed (Developer ID), and notarized by the release script
in the main repo (`scripts/release.sh`) and uploaded as GitHub Release
assets. Each release here bumps `version` and `sha256` in
`Casks/sandfestival.rb` to point at the new asset.
