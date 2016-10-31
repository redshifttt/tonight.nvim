# Spacegray.vim

Spacegray is a colorscheme for Vim loosely modeled after
the [spacegray](https://github.com/zdne/spacegray-xcode) theme for Xcode.

## Options

You can tweak Spacegray by enabling the following disabled options:

1. Underlined Search: Underline search text instead of using highlight color.
   Put the following in your `~/.vimrc` to enable it:

  > `let g:spacegray_underline_search = 1`

2. Italic Comments: Italicize comments (_note_: vim requires terminal support).
   Put the following in your `~/.vimrc` to enable it:

  > `let g:spacegray_italicize_comments = 1`

## Screenshots

Here are a few screenshots of Spacegray:
(Font used: Fira Mono 12pt)

### JavaScript (GUI Vim)
![Spacegray in JavaScript](http://cl.ly/Yx75/JS-Spacegray.png)

### Vim (GUI Vim)
![Spacegray in Vim](http://cl.ly/Yxfr/vim-spacegray.png)

### Ruby (Terminal Vim)
![Spacegray in Ruby](http://cl.ly/ZMR9/ruby-spaceray.png)

## Installation

If you don't have a preferred installation method, I recommend installing
[pathogen.vim](https://github.com/tpope/vim-pathogen), and then simply copy and
paste:

    cd ~/.vim/bundle && git clone git://github.com/ajh17/Spacegray.vim.git

Then in your ~/.vimrc, add this line:

    colorscheme spacegray

## Terminal Environment

If you use Spacegray inside a Terminal, please make sure you use a Terminal
with 256 color support. Most these days are. Ensure that the default TERM
contains the string `256color`. An example would be `xterm-256color` or
if using tmux or screen, `screen-256color`.

NOTE: If you use Vim 7.4.1778 or higher, you can now use Spacegray's GUI colors
inside terminal Vim as long as your terminal supports true colors (24-bit
colors). To enable this, put `:set termguicolors` and ignore the rest of the
terminal color sections of this document.

### Terminal Color Palette

Spacegray will look good in a dark terminal colorscheme, but if you use
Spacegray's color palette, it will look beautiful.

### Terminal Colorschemes

On OS X, colorschemes for iTerm2 and Terminal.app are provided with the download.
Simply double click to install.

### Terminator

Spacegray.terminator is provided for Terminator and can be installed by
copying to `~/.config/terminator/config` on Linux or
`$XDG_CONFIG_HOME/terminator/config` if you're running OS X.

### Gnome Terminal

For gnome terminal, the instructions are a tad bit complicated since
configuration is done via dconf.

First, launch a new instance of Gnome Terminal and then go to Preferences ->
Profiles and click Edit on the default profile being used. Copy the "Profile ID"
from that window. Open a new Terminal and set a local variable like so:

    profile_id=<profile_id_here>

In the same terminal window, run a set of dconf write commands to set the colors:

    dconf write /org/gnome/terminal/legacy/profiles:/:$profile_id/visible-name "'Spacegray'"
    dconf write /org/gnome/terminal/legacy/profiles:/:$profile_id/background-color "'rgb(17,19,20)'"
    dconf write /org/gnome/terminal/legacy/profiles:/:$profile_id/foreground-color "'rgb(183,187,183)'"
    dconf write /org/gnome/terminal/legacy/profiles:/:$profile_id/use-theme-colors "false"
    dconf write /org/gnome/terminal/legacy/profiles:/:$profile_id/use-theme-transparency "false"
    dconf write /org/gnome/terminal/legacy/profiles:/:$profile_id/palette "['rgb(44,47,51)', 'rgb(176,76,80)', 'rgb(145,150,82)', 'rgb(226,153,92)', 'rgb(102,137,157)', 'rgb(141,100,148)', 'rgb(82,124,119)', 'rgb(96,99,96)', 'rgb(75,80,86)', 'rgb(176,76,80)', 'rgb(148,152,91)', 'rgb(226,153,92)', 'rgb(102,137,157)', 'rgb(141,100,148)', 'rgb(82,124,119)', 'rgb(221,227,220)']"

The terminal should then reflect Spacegray's colors.

### Xresources

For Linux/BSD users, here is a sample ~/.Xresources:

    *background: #111314
    *foreground: #B7BBB7
    ! black
    *color0: #2C2F33
    *color8: #4B5056
    ! red
    *color1: #B04C50
    *color9: #B04C50
    ! green
    *color2: #919652
    *color10: #94985B
    ! yellow
    *color3: #E2995C
    *color11: #E2995C
    ! blue
    *color4: #66899D
    *color12: #66899D
    ! magenta
    *color5: #8D6494
    *color13: #8D6494
    ! cyan
    *color6: #527C77
    *color14: #527C77
    ! white
    *color7: #606360
    *color15: #DDE3DC

# License
Copyright (c) Akshay Hegde. Distributed under the same terms as Vim itself. See `:help license`
