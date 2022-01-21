require('colours')

return {
    normal = {
        a = { bg = c.magenta, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.magenta },
        c = { bg = c.background, fg = c.gray }
    },
    insert = {
        a = { bg = c.green, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.green },
        c = { bg = c.background, fg = c.gray }
    },
    visual = {
        a = { bg = c.yellow, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.yellow },
        c = { bg = c.background, fg = c.gray }
    },
    replace = {
        a = { bg = c.red, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.red },
        c = { bg = c.background, fg = c.gray }
    },
    command = {
        a = { bg = c.red, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.red },
        c = { bg = c.background, fg = c.gray }
    },
    inactive = {
        a = { bg = c.background, fg = c.gray, gui = 'bold' },
        b = { bg = c.background, fg = c.gray },
        c = { bg = c.background, fg = c.gray }
    }
}
