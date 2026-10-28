# homebrew-ctm

Homebrew tap for **Call to Meet Notch** (macOS 26+), the Mac notch companion of Call to Meet for iPhone.

```
brew tap iflorit/ctm
brew trust iflorit/ctm
brew install --cask call-to-meet-notch
```

The cask installs the notarized Developer ID build from https://ctm-mac.web.app/. The app updates itself (signed manifest); `brew upgrade --cask` only refreshes the cask.
