# Zsh Quick History 🔍

Quickly preview and execute terminal commands with zsh-quick-history.

## Preview

![Quick History Demo](https://github.com/maustinstar/zsh-quick-history/blob/main/images/zsh-quick-history-preview.gif)

## Installation

### Manual 🛠️

* **IMPORTANT: Replace `path/to/repo` with your own filepath preferance**
* clone this repository `git clone https://github.com/maustinster/zsh-quick-history.git ~/path/to/repo`
* add `source ~/path/to/repo/zsh-quick-history.zsh` to `~/.zshrc`
* relaunch the terminal (restart the app, or run `source ~/.zshrc`)

### Homebrew 🍺

Not currently available.

## Usage

Quick previews will be immediately available when typing.

To quickly execute a command, create a key binding to `quick-history-execute` in `~/.zshrc`.

```
# Esc, Return to quickly execute history
bindkey '^[^M' quick-history-execute
```

## Want to improve your Zsh and Vim proficiency? 📚💭

Join me [on Discord](https://discord.gg/NvKHnBuHJs)!
