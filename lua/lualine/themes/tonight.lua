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
    c = { bg = c.gray2, fg = c.gray }
  },
  visual = {
    a = { bg = c.yellow, fg = c.background, gui = 'bold' },
    b = { bg = c.gray2, fg = c.yellow },
    c = { bg = c.gray2, fg = c.gray }
  },
  replace = {
    a = { bg = c.red2, fg = c.background, gui = 'bold' },
    b = { bg = c.gray2, fg = c.red2 },
    c = { bg = c.gray2, fg = c.gray }
  },
  command = {
    a = { bg = c.red, fg = c.background, gui = 'bold' },
    b = { bg = c.gray2, fg = c.red },
    c = { bg = c.gray2, fg = c.gray }
  },
  inactive = {
    a = { bg = c.gray2, fg = c.gray, gui = 'bold' },
    b = { bg = c.gray2, fg = c.gray },
    c = { bg = c.gray2, fg = c.gray }
  }
}
