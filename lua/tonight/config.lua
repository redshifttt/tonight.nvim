local c = require("tonight.colours")

vim.highlight.priorities = {
    diagnostics = 150,
    syntax = 101,
    treesitter = 100,
    user = 200
}

vim.g.terminal_color_0 = c.background_10
vim.g.terminal_color_8 = c.gray

vim.g.terminal_color_7 = c.foreground
vim.g.terminal_color_15 = c.foreground

vim.g.terminal_color_1 = c.red
vim.g.terminal_color_9 = c.red

vim.g.terminal_color_2 = c.green
vim.g.terminal_color_10 = c.green

vim.g.terminal_color_3 = c.yellow
vim.g.terminal_color_11 = c.yellow

vim.g.terminal_color_4 = c.blue
vim.g.terminal_color_12 = c.blue

vim.g.terminal_color_5 = c.magenta
vim.g.terminal_color_13 = c.magenta

vim.g.terminal_color_6 = c.teal
vim.g.terminal_color_14 = c.teal
