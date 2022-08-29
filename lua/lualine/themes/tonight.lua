local c = require('tonight.colours')

return {
    normal = {
        a = { bg = c.magenta, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.white },
        c = { bg = c.background, fg = c.white },
        z = { bg = c.background, fg = c.white }
    },
    insert = {
        a = { bg = c.green, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.white },
        c = { bg = c.background, fg = c.white },
        z = { bg = c.background, fg = c.white }
    },
    visual = {
        a = { bg = c.yellow, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.white },
        c = { bg = c.background, fg = c.white },
        z = { bg = c.background, fg = c.white }
    },
    replace = {
        a = { bg = c.red, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.white },
        c = { bg = c.background, fg = c.white },
        z = { bg = c.background, fg = c.white }
    },
    command = {
        a = { bg = c.blue, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.white },
        c = { bg = c.background, fg = c.white },
        z = { bg = c.background, fg = c.white }
    },
    inactive = {
        a = { bg = c.background, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.background },
        c = { bg = c.background, fg = c.background },
        z = { bg = c.background, fg = c.background }
    }
}
