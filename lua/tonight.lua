-- tonight.nvim: lua colour scheme inspired by tomorrow and spacegray
require('colors')

local function highlight(group, styles)
    local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
    local sp = styles.sp and 'guisp='.. styles.sp or 'guisp=NONE'
    local fg = styles.fg and 'guifg='.. styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg='.. styles.bg or 'guibg=NONE'

    vim.api.nvim_command('highlight ' .. group .. ' ' .. gui ..' '.. sp .. ' ' .. fg .. ' ' .. bg)
end

local hl_groups = {
    Boolean       = { fg = c.yellow2 },
    ColorColumn   = { bg = c.gray },
    Comment       = { fg = c.gray },
    Constant      = { fg = c.foreground },
    Cursor        = { bg = c.white },
    CursorLine    = { bg = c.gray2 },
    CursorLineNr  = { bg = c.gray2, fg = c.white },
    Delimiter     = { fg = c.magenta },
    DiffAdd       = { fg = c.green },
    DiffDelete    = { fg = c.red },
    DiffText      = { fg = c.white },
    Directory     = { fg = c.blue2 },
    EndOfBuffer   = { fg = c.background },
    ErrorMsg      = { bg = c.red2, fg = c.foreground },
    FoldColumn    = { fg = c.gray, gui = "bold" },
    Folded        = { fg = c.gray, gui = "bold" },
    Function      = { fg = c.blue2 },
    Identifier    = { fg = c.blue2 },
    IncSearch     = { bg = c.yellow2, fg = c.background },
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
    SpellRare     = { sp = c.yellow2, style = "undercurl" },
    Statement     = { fg = c.magenta, gui = "bold" },
    StatusLine    = { fg = c.foreground, bg = c.gray },
    StatusLineNC  = { fg = c.foreground, bg = c.gray },
    String        = { fg = c.yellow2 },
    Substitute    = { bg = c.red, fg = c.background },
    Title         = { fg = c.foreground, gui = "bold" },
    Todo          = { fg = c.background, bg = c.foreground, gui = "bold" },
    Type          = { fg = c.magenta },
    VertSplit     = { fg = c.gray, bg = c.background },
    Visual        = { bg = c.gray2 },
    VisualNOS     = { bg = c.gray2 },
    WarningMsg    = { fg = c.red },
    Whitespace    = { fg = c.gray },

    -- vim help
    helpCommand = { fg = c.teal2 },
    helpExample = { fg = c.green },

    -- lua
    luaParens = { fg = c.red2 },
}

for group, styles in pairs(hl_groups) do highlight(group, styles) end
