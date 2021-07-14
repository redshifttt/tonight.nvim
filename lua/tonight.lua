-- tonight.nvim: lua colour scheme inspired by tomorrow and spacegray
require('colors')

local function highlight(group, styles)
    local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
    local sp = styles.sp and 'guisp='.. styles.sp or 'guisp=NONE'
    local fg = styles.fg and 'guifg='.. styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg='.. styles.bg or 'guibg=NONE'

    vim.api.nvim_command('highlight ' .. group .. ' ' .. gui ..' '.. sp .. ' ' .. fg .. ' ' .. bg)
end

local main_syntax = {
    ColorColumn   = { bg = c.gray },
    Comment       = { fg = c.gray },
    Constant      = { fg = c.foreground },
    Cursor        = { bg = c.white },
    CursorLine    = { bg = c.gray_darker },
    CursorLineNr  = { bg = c.gray_darker, fg = c.white },
    Delimiter     = { fg = c.magenta },
    DiffAdd       = { fg = c.green },
    DiffDelete    = { fg = c.red },
    DiffText      = { fg = c.white },
    Directory     = { fg = c.blue_darker },
    EndOfBuffer   = { fg = c.background },
    ErrorMsg      = { bg = c.red_darker, fg = c.foreground },
    FoldColumn    = { fg = c.gray, gui = "bold" },
    Folded        = { fg = c.gray, gui = "bold" },
    Function      = { fg = c.blue_darker },
    Identifier    = { fg = c.blue_darker },
    IncSearch     = { bg = c.yellow_darker, fg = c.background },
    LineNr        = { fg = c.gray },
    MatchParen    = { bg = c.background, fg = c.yellow, gui = "underline"},
    ModeMsg       = { fg = c.foreground, style = "bold" },
    MoreMsg       = { fg = c.blue, gui = "bold" },
    Normal        = { fg = c.foreground },
    NormalFloat   = { fg = c.foreground },
    Number        = { fg = c.teal },
    Pmenu         = { bg = c.gray, fg = c.foreground },
    PreProc       = { fg = c.blue },
    Question      = { fg = c.blue },
    QuickFixLine  = { bg = c.gray, style = "bold" },
    Search        = { bg = c.yellow, fg = c.background },
    Special       = { fg = c.red },
    SpellBad      = { sp = c.red, style = "undercurl" },
    SpellCap      = { sp = c.blue, style = "undercurl" },
    SpellLocal    = { sp = c.info, style = "undercurl" },
    SpellRare     = { sp = c.yellow_darker, style = "undercurl" },
    Statement     = { fg = c.magenta, gui = "bold" },
    StatusLine    = { fg = c.foreground, bg = c.gray },
    StatusLineNC  = { fg = c.foreground, bg = c.gray },
    String        = { fg = c.yellow_darker },
    Substitute    = { bg = c.red, fg = c.background },
    Title         = { fg = c.foreground, gui = "bold" },
    Todo          = { fg = c.background, bg = c.foreground, gui = "bold" },
    Type          = { fg = c.magenta },
    VertSplit     = { fg = c.gray, bg = c.background },
    Visual        = { bg = c.gray_darker },
    VisualNOS     = { bg = c.gray_darker },
    WarningMsg    = { fg = c.red },
    Whitespace    = { fg = c.gray },
}

local language_syntax = {
    -- Shell
    -- shOption = { fg = c.blue_darker, gui = "bold" },
    -- shArithmetic = { fg = c.magenta_darker },
    -- shCommandSub = { fg = c.blue },

    -- vim help
    helpCommand = { fg = c.teal_darker },
    helpExample = { fg = c.green },
}

local plugin_syntax = {}

for group, styles in pairs(main_syntax) do
    highlight(group, styles)
end

for group, styles in pairs(language_syntax) do
    highlight(group, styles)
end
