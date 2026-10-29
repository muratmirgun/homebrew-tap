# Murat Mirgun Homebrew tap

## OwnCode

Install OwnCode on macOS or Linux:

```bash
brew install muratmirgun/tap/owncode
```

The OwnCode release workflow maintains `Formula/owncode.rb`.
It pins platform archives and SHA-256 checksums from each stable release.

Source and release notes: https://github.com/muratmirgun/owncode

## redcrab

Install the redcrab Redis and Valkey client on macOS (the terminal app on Linux too):

```bash
brew install --cask muratmirgun/tap/redcrab    # the desktop app
brew install muratmirgun/tap/redcrab-tui       # the terminal app
```

redcrab's Homebrew workflow maintains `Casks/redcrab.rb` and `Formula/redcrab-tui.rb`
from each published release's signed `SHA256SUMS`.

Source and release notes: https://github.com/muratmirgun/redcrab
