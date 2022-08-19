M = {}

function M.highlight(group, styles)
    local gui = styles.gui
        and 'gui=' .. styles.gui
        or 'gui=NONE'
    local fg = styles.fg
        and 'guifg=' .. styles.fg
        or 'guifg=NONE'
    local bg = styles.bg
        and 'guibg=' .. styles.bg
        or 'guibg=NONE'

    vim.cmd('highlight ' .. group .. ' ' .. gui .. ' ' .. ' ' .. fg .. ' ' .. bg)
end

return M
