# homebrew-tap

Homebrew casks for my apps:

- [differ](https://github.com/federicosandrelli/differ), a pull request viewer for agent-written code.
- [tinytomato](https://github.com/federicosandrelli/tinytomato), a minimal pomodoro timer for the macOS menu bar.

## Install

```sh
brew tap federicosandrelli/tap
brew install differ
brew install tinytomato
```

If you tapped `federicosandrelli/tinytomato` before, that tap now holds both
casks: skip `brew tap` and run `brew update`, then `brew install differ`.

The casks remove the quarantine attribute after the install, so macOS opens
the apps on the first launch.
