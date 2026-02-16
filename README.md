# .dotfiles

Various configuration files.

---

### Contents

- [i3](https://i3wm.org/) window manager config
- vim ([Neovim](https://neovim.io)) config
- [kitty](https://github.com/kovidgoyal/kitty) config
- [tmux](https://github.com/tmux/tmux) config
- [rofi](https://github.com/davatorium/rofi) config
- utility scripts
- [keyd](https://github.com/rvaiya/keyd) keyboard remappings

### Dependencies

##### Neovim

- Neovim >= **0.11.2** (needs to be built with **LuaJIT**)
- Git >= **2.19.0** (for partial clones support)
- [LazyVim](https://www.lazyvim.org/)
- a [Nerd Font](https://www.nerdfonts.com/) (v3.0 or greater) _**(optional, but needed to display some icons)**_
- [lazygit](https://github.com/jesseduffield/lazygit) _**(optional)**_
- [tree-sitter-cli](https://github.com/tree-sitter/tree-sitter/blob/master/crates/cli/README.md) and a **C** compiler for `nvim-treesitter`. See [here](https://github.com/nvim-treesitter/nvim-treesitter#requirements)
- [curl](https://github.com/curl/curl) for [blink.cmp](https://github.com/Saghen/blink.cmp) (completion engine)
- for [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) _**(optional)**_
  - **live grep**: [ripgrep](https://github.com/BurntSushi/ripgrep)
  - **find files**: [fd](https://github.com/sharkdp/fd)
- a terminal that support true color and undercurl:
  - [kitty](https://github.com/kovidgoyal/kitty) (Linux & macOS)

### Usage

Clone the repository into the home directory:

```bash
git clone git@github.com:schweigerjonas/.dotfiles.git
cd .dotfiles
```

Create symlinks using [GNU Stow](https://www.gnu.org/software/stow/):

```bash
stow .
```
