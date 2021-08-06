require('colours')

return {
  normal = {
    a = { bg = c.magenta, fg = c.background, gui = 'bold' },
    b = { bg = c.gray2, fg = c.magenta2 },
    c = { bg = c.gray2, fg = c.gray }
  },
  insert = {
    a = { bg = c.green, fg = c.background, gui = 'bold' },
    b = { bg = c.gray2, fg = c.green },
    c = { bg = c.gray2, fg = c.white }
  },
  visual = {
    a = { bg = c.yellow, fg = c.background, gui = 'bold' },
    b = { bg = c.gray2, fg = c.yellow },
    c = { bg = c.gray2, fg = c.background }
  },
  replace = {
    a = { bg = c.red, fg = c.background, gui = 'bold' },
    b = { bg = c.gray2, fg = c.red },
    c = { bg = c.gray2, fg = c.white }
  },
  command = {
    a = { bg = c.blue, fg = c.background, gui = 'bold' },
    b = { bg = c.gray2, fg = c.blue },
    c = { bg = c.gray2, fg = c.background }
  },
  inactive = {
    a = { bg = c.gray2, fg = c.gray, gui = 'bold' },
    b = { bg = c.gray2, fg = c.gray },
    c = { bg = c.gray2, fg = c.gray }
  }
}
