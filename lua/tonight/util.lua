util = {}

local function linker(from_group, to_group)
    vim.cmd("highlight! " .. "link " .. from_group .. " " .. to_group)
end

function util.highlight(group, styles)
    local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
    local fg = styles.fg and 'guifg=' .. styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg=' .. styles.bg or 'guibg=NONE'
    local link = styles.link or nil

    if link then
        linker(group, link)
    else
        vim.cmd('highlight ' .. group .. ' ' .. gui .. ' ' .. ' ' .. fg .. ' ' .. bg)
    end
end

return util
