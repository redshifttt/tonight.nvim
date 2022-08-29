local c = require('tonight.colours')

return {
    normal = {
        a = { bg = c.magenta, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.magenta },
        c = { bg = c.background, fg = c.magenta },
        z = { bg = c.background, fg = c.magenta }
    },
    insert = {
        a = { bg = c.green, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.green },
        c = { bg = c.background, fg = c.green },
        z = { bg = c.background, fg = c.green }
    },
    visual = {
        a = { bg = c.yellow, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.yellow },
        c = { bg = c.background, fg = c.yellow },
        z = { bg = c.background, fg = c.yellow }
    },
    replace = {
        a = { bg = c.red, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.red },
        c = { bg = c.background, fg = c.red },
        z = { bg = c.background, fg = c.red }
    },
    command = {
        a = { bg = c.blue, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.blue },
        c = { bg = c.background, fg = c.blue },
        z = { bg = c.background, fg = c.blue }
    },
    inactive = {
        a = { bg = c.background, fg = c.background, gui = 'bold' },
        b = { bg = c.background, fg = c.background },
        c = { bg = c.background, fg = c.background },
        z = { bg = c.background, fg = c.background }
    }
}
