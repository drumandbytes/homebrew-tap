# homebrew-tap

Homebrew tap for drumandbytes tools and casks.

## Installation

```bash
brew tap drumandbytes/tap
```

## Available Casks

### delistd
Send data removal requests to data brokers ([delistd.dev](https://delistd.dev/?ref=homebrew-tap-readme)). Formerly `eraser`: `brew upgrade` moves existing installs to this cask, and `brew install drumandbytes/tap/eraser` resolves to it.

```bash
brew install --cask drumandbytes/tap/delistd
```

### dnb-cal
Writes Apple Calendar events to a file, for scripts and helpers that can't ask for Calendar access themselves. Requires Apple Silicon and macOS Ventura or later.

```bash
brew install --cask drumandbytes/tap/dnb-cal
```

### music-router
Stops Music.app auto-launch and routes media keys elsewhere. Requires Apple Silicon and macOS Ventura or later.

```bash
brew install --cask drumandbytes/tap/music-router
```
