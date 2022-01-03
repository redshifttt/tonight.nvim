-- tonight.nvim: lua colour scheme inspired by tomorrow and spacegray
require('colours')

-- Useful bit of VimL to be able to retrieve the highlight group from a bit of text.
-- let s = synID(line('.'), col('.'), 1) | echo synIDattr(s, 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name')

local function highlight(group, styles)
    local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
    local fg = styles.fg and 'guifg='.. styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg='.. styles.bg or 'guibg=NONE'

    vim.api.nvim_command('highlight ' .. group .. ' ' .. gui .. ' ' .. ' ' .. fg .. ' ' .. bg)
end

local groups = {
    Boolean      = { fg = c.yellow2 },
    ColorColumn  = { bg = c.gray },
    Comment      = { fg = c.gray },
    Constant     = { fg = c.blue },
    Conditional  = { fg = c.magenta },
    Cursor       = { bg = c.white },
    TermCursor   = { bg = c.highlight },
    CursorLine   = { bg = c.highlight },
    CursorLineNr = { bg = c.highlight, fg = c.white },
    Delimiter    = { fg = c.gray },
    DiffAdd      = { fg = c.green },
    DiffDelete   = { fg = c.red },
    DiffText     = { fg = c.white },
    Directory    = { fg = c.blue2 },
    EndOfBuffer  = { fg = c.background },
    Error        = { bg = c.red2, fg = c.foreground },
    ErrorMsg     = { bg = c.red2, fg = c.foreground },
    FoldColumn   = { fg = c.gray, gui = "bold" },
    Folded       = { fg = c.gray, gui = "bold" },
    Function     = { fg = c.blue2 },
    Identifier   = { fg = c.blue2 },
    Include      = { fg = c.magenta2 },
    IncSearch    = { bg = c.yellow2, fg = c.background },
    Keyword      = { fg = c.magenta2 },
    LineNr       = { fg = c.gray },
    Macro        = { fg = c.magenta2 },
    MatchParen   = { bg = c.background, fg = c.yellow, gui = "underline"},
    ModeMsg      = { fg = c.foreground, gui = "bold" },
    MoreMsg      = { fg = c.blue, gui = "bold" },
    Normal       = { fg = c.foreground },
    NormalFloat  = { fg = c.foreground },
    Number       = { fg = c.teal },
    NonText      = { fg = c.foreground, gui = "bold" },
    Operator     = { fg = c.magenta },
    Pmenu        = { bg = c.highlight, fg = c.foreground },
    PreProc      = { fg = c.blue },
    Question     = { fg = c.blue },
    QuickFixLine = { bg = c.highlight, gui = "bold" },
    Repeat       = { fg = c.magenta },
    Search       = { bg = c.yellow, fg = c.background },
    Special      = { fg = c.red },
    SpecialChar  = { fg = c.red },
    Statement    = { fg = c.magenta },
    StatusLine   = { fg = c.foreground, bg = c.highlight },
    StatusLineNC = { fg = c.foreground, bg = c.highlight },
    SignColumn   = { bg = c.background },
    String       = { fg = c.green },
    Structure    = { fg = c.magenta2 },
    Substitute   = { bg = c.red, fg = c.background },
    Title        = { fg = c.foreground, gui = "bold" },
    Todo         = { fg = c.background, bg = c.foreground, gui = "bold" },
    Type         = { fg = c.blue },
    VertSplit    = { fg = c.gray, bg = c.background },
    Visual       = { bg = c.highlight },
    VisualNOS    = { bg = c.highlight },
    WarningMsg   = { fg = c.red },
    Whitespace   = { fg = c.gray },
    WildMenu     = { bg = c.highlight, gui = "bold" },

    -- vim help
    helpCommand = { fg = c.teal2 },
    helpExample = { fg = c.green },

    -- lua
    luaParens = { fg = c.red },
    luaTable = { fg = c.red },

    -- LSP
    LspDiagnosticsDefaultWarning     = { fg = c.yellow },
    LspDiagnosticsDefaultError       = { fg = c.red },
    LspDiagnosticsDefaultHint        = { fg = c.teal },
    LspDiagnosticsDefaultInformation = { fg = c.green },
}

for group, styles in pairs(groups) do
    highlight(group, styles)
end
