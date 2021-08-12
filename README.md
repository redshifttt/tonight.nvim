# tonight.nvim 🌙

Tonight is a dark colour scheme for [Neovim](https://github.com/neovim/neovim) written in Lua and based on [Tomorrow Dark](https://github.com/chriskempson/base16-tomorrow-scheme) and [Spacegray](https://github.com/ackyshake/Spacegray.vim).

## Why?

I made it because the aforementioned colour schemes are great but quite dim and unappealing to look at over long periods of time. The main idea is to look at a colour and know instantly what it is *every single time* without the mental overhead of staring at it too long. This, for me, does that.

## Features

- Easy on the eyes for long periods of time
- Terminal colour schemes
- **Lualine** theme.
- Soon to support:
    - Neovim LSP
    - [barbar.nvim](https://github.com/romgrk/barbar.nvim)
    - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

## Screenshots

![image](screenshots/screenshot.png)

## Installation & Usage

##### Install with your favourite plugin manager

[packer](https://github.com/wbthomason/packer.nvim)

```lua
use 'numpadd/tonight.nvim'
```

##### Then enable the colourscheme in your config

vim script:

```vim
colorscheme tonight
```

lua:

```lua
vim.cmd[[colorscheme tonight]]
```

#### Lualine

If you use Lualine then you can you can set the theme in your config:

```lua
require('lualine').setup{
    options = {
        theme = tonight,
        ...
    },
}
```

## Todo

- [x] Write a proper README
- [ ] Plugin support
    - [ ] barbar.nvim
    - [ ] LSP
    - [x] Lualine
    - [ ] Telescope
- [x] Screenshots (who doesn't love those?)
- [x] Terminal Schemes
