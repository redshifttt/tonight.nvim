# tonight.nvim 🌙

Tonight is a dark colour scheme for [Neovim](https://github.com/neovim/neovim)
written in Lua with [Tomorrow Dark](https://github.com/chriskempson/base16-tomorrow-scheme) and
[Spacegray](https://github.com/ackyshake/Spacegray.vim) in mind.

## Screenshots

![image](screenshots/screenshot1.png)
![image](screenshots/lsp-screenshot.png)

## Why?

I made it because the aforementioned colour schemes are great but quite dim and
unappealing to look at over long periods of time. The main idea is to look at a
colour and know instantly what it is *every single time* without the mental
overhead of staring at it too long. This, for me, does that.

Also I wanted an excuse to learn Lua :^).

## Features

- Easy on the eyes for long periods of time
- **Supports LSP**.
- Treesitter support for the most part. More support is gradually being added
  over time.

## Installation & Usage

### Install with [packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'redshifttt/tonight.nvim'
```

### Enabling the colourscheme

```lua
vim.cmd.colorscheme("tonight")
```
