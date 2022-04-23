local c = require('colours')

return {
    normal = {
        a = { bg = c.blue, fg = c.background, gui = 'bold' },
        b = { bg = c.background_lighter, fg = c.blue },
        c = { bg = c.background_lighter, fg = c.blue }
    },
    insert = {
        a = { bg = c.green, fg = c.background, gui = 'bold' },
        b = { bg = c.background_lighter, fg = c.green },
        c = { bg = c.background_lighter, fg = c.green }
    },
    visual = {
        a = { bg = c.yellow, fg = c.background, gui = 'bold' },
        b = { bg = c.background_lighter, fg = c.yellow },
        c = { bg = c.background_lighter, fg = c.yellow }
    },
    replace = {
        a = { bg = c.red, fg = c.background, gui = 'bold' },
        b = { bg = c.background_lighter, fg = c.red },
        c = { bg = c.background_lighter, fg = c.red }
    },
    command = {
        a = { bg = c.magenta, fg = c.background, gui = 'bold' },
        b = { bg = c.background_lighter, fg = c.magenta },
        c = { bg = c.background_lighter, fg = c.magenta }
    },
    inactive = {
        a = { bg = c.background_lighter, fg = c.background, gui = 'bold' },
        b = { bg = c.background_lighter, fg = c.background },
        c = { bg = c.background_lighter, fg = c.background }
    }
}
