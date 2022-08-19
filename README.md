# tonight.nvim 🌙

Tonight is a dark colour scheme for [Neovim](https://github.com/neovim/neovim)
written in Lua and based on [Tomorrow Dark](https://github.com/chriskempson/base16-tomorrow-scheme) and
[Spacegray](https://github.com/ackyshake/Spacegray.vim).

## Screenshots

![image](screenshots/screenshot1.png)

## Why?

I made it because the aforementioned colour schemes are great but quite dim and
unappealing to look at over long periods of time. The main idea is to look at a
colour and know instantly what it is *every single time* without the mental
overhead of staring at it too long. This, for me, does that.

Also I wanted an excuse to learn Lua :^).

## Features

- Easy on the eyes for long periods of time
- Terminal colour schemes
- **Lualine** theme.
- **Supports LSP** with tokyodark-like highlighting of virtual text!
- Treesitter support for the most part.

## Installation & Usage

##### Install with your favourite plugin manager

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'redshifttt/tonight.nvim'
```

##### Then enable the colourscheme in your config

lua:

```lua
vim.cmd.colorscheme("tonight")
```

#### Lualine

If you use Lualine then you can you can set the theme in your config:

```lua
require('lualine').setup{
    options = {
        theme = "tonight"
    },
}
```
