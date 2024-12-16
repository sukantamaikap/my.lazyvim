## 💤 LazyVim

My starter template for [LazyVim](https://github.com/LazyVim/LazyVim). Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

### Font changes

Install [fonts](https://www.nerdfonts.com/#home), and set the same in ITerm option.

```zsh
brew tap homebrew/cask-fonts
brew install --cask font-<FONT NAME>-nerd-font
```

Example:

```zsh
brew install font-hack-nerd-font
brew install font-blex-mono-nerd-font
```

### python changes

- Install pynvim: `pip install pynvim`

### npm changes

- install neovim npm package globally: `npm install -g neovim`

### makrdownlint changes

Following [this](https://github.com/LazyVim/LazyVim/discussions/4094) solution, to disable Markdown warning, `$HOME/.markdownlint-cli2.yaml` need to be present with the below content:

```yaml
config:
  MD013: false
```

### Reference dotfile repositories

- [1](https://github.com/omerxx/dotfiles)
- [2](https://github.com/typecraft-dev/dotfiles)

### Debugining

#### golang

```zsh
brew install delve
```

#### python

```zsh
brew install ruff
```

### Notes

Works in unision with [tmux setup](https://github.com/sukantamaikap/my.tmux).
