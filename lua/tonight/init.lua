-- tonight.nvim: lua colour scheme inspired by tomorrow and spacegray
local config = require('tonight.config')
local g = require("tonight.groups")

local function highlight(group, styles)
    local gui = styles.gui
        and 'gui=' .. styles.gui
        or 'gui=NONE'
    local fg = styles.fg
        and 'guifg=' .. styles.fg
        or 'guifg=NONE'
    local bg = styles.bg
        and 'guibg=' .. styles.bg
        or 'guibg=NONE'

    vim.api.nvim_command('highlight ' .. group .. ' ' .. gui .. ' ' .. ' ' .. fg .. ' ' .. bg)
end

for group, styles in pairs(g) do
    highlight(group, styles)
end
