-- tonight.nvim: lua colour scheme inspired by tomorrow and spacegray

local function highlight(group, styles)
    local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
    local sp = styles.sp and 'guisp='.. styles.sp or 'guisp=NONE'
    local fg = styles.fg and 'guifg='.. styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg='.. styles.bg or 'guibg=NONE'

    vim.api.nvim_command('highlight ' .. group .. ' ' .. gui ..' '.. sp .. ' ' .. fg .. ' ' .. bg)
end

local c = {
    background     = "#0c0e11",
    foreground     = "#d3e3f5",
    gray           = "#2c3641",
    red            = "#ec3e3e",
    red_darker     = "#d52828",
    green          = "#61c15c",
    green_darker   = "#3fb439",
    yellow         = "#f0ea6a",
    yellow_darker  = "#ddbc3d",
    blue           = "#759ed4",
    blue_darker    = "#538bd4",
    magenta        = "#a588c6",
    magenta_darker = "#9163c6",
    teal           = "#50b2c1",
    teal_darker    = "#259caf",
    white          = "#d3e3f5",
}

local main_syntax = {
    ColorColumn  = { bg = c.gray },
    Comment      = { fg = c.gray },
    Cursor       = { bg = c.white },
    CursorLine   = { bg = c.background },
    CursorLineNr = { fg = c.foreground, fg = c.white },
    DiffAdd      = { fg = c.green },
    DiffDelete   = { fg = c.red },
    DiffText     = { fg = c.white },
    Directory    = { fg = c.blue_darker },
    EndOfBuffer  = { fg = c.background },
    ErrorMsg     = { bg = c.red_darker, fg = c.foreground },
    FoldColumn   = { fg = c.gray, gui = "bold" },
    Folded       = { fg = c.gray, gui = "bold" },
    Function     = { fg = c.blue_darker },
    IncSearch    = { bg = c.yellow, fg = c.background },
    IncSearch    = { bg = c.yellow_darker, fg = c.background },
    LineNr       = { fg = c.gray },
    MatchParen   = { bg = c.background, fg = c.yellow, gui = "underline"},
    ModeMsg      = { fg = c.foreground, style = "bold" },
    MoreMsg      = { fg = c.blue, gui = "bold" },
    Normal       = { fg = c.foreground },
    NormalFloat  = { fg = c.foreground },
    Pmenu        = { bg = c.gray, fg = c.foreground },
    PreProc      = { fg = c.blue },
    Question     = { fg = c.blue },
    QuickFixLine = { bg = c.gray, style = "bold" },
    Search       = { bg = c.yellow, fg = c.background },
    SpellBad     = { sp = c.red, style = "undercurl" },
    SpellCap     = { sp = c.green_darker, style = "undercurl" },
    SpellLocal   = { sp = c.info, style = "undercurl" },
    SpellRare    = { sp = c.yellow_darker, style = "undercurl" },
    Statement    = { fg = c.magenta },
    StatusLine   = { fg = c.foreground, bg = c.gray },
    StatusLineNC = { fg = c.foreground, bg = c.gray },
    String       = { fg = c.green },
    Substitute   = { bg = c.red, fg = c.background },
    Type         = { fg = c.magenta },
    Type         = { fg = c.yellow },
    Visual       = { bg = c.gray },
    VisualNOS    = { bg = c.gray },
    WarningMsg   = { fg = c.red },
    Whitespace   = { fg = c.gray },
}

local language_syntax = {}
local plugin_syntax = {}

for group, styles in pairs(main_syntax) do
    highlight(group, styles)
end
