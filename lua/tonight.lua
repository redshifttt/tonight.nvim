-- tonight.nvim: lua colour scheme inspired by tomorrow and spacegray
local c = require('colours')
local api = vim.api

-- Useful bit of VimL to be able to retrieve the highlight group from a bit of text.
-- let s = synID(line('.'), col('.'), 1) | echo synIDattr(s, 'name') . ' -> ' . synIDattr(synIDtrans(s), 'name')

-- Borrowed from:
-- https://github.com/folke/tokyonight.nvim/blob/8223c970677e4d88c9b6b6d81bda23daf11062bb/lua/tokyonight/util.lua#L26
-- and slightly edited
local function hex_to_rbg(hex_str)
    local hex = "[abcdef0-9][abcdef0-9]"
    local pat = "^#(" .. hex .. ")(" .. hex .. ")(" .. hex .. ")$"
    hex_str = string.lower(hex_str)

    assert(string.find(hex_str, pat) ~= nil, "hex_to_rgb: invalid hex_str: " .. tostring(hex_str))

    local r, g, b = string.match(hex_str, pat)
    return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

function blend(fg, alpha)
    bg = hex_to_rbg(c.background)
    fg = hex_to_rbg(fg)

    local blend_channel = function(i)
        local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return string.format("#%02X%02X%02X", blend_channel(1), blend_channel(2), blend_channel(3))
end

local function highlight(group, styles)
    local gui = styles.gui and 'gui=' .. styles.gui or 'gui=NONE'
    local fg = styles.fg and 'guifg='.. styles.fg or 'guifg=NONE'
    local bg = styles.bg and 'guibg='.. styles.bg or 'guibg=NONE'

    api.nvim_command('highlight ' .. group .. ' ' .. gui .. ' ' .. ' ' .. fg .. ' ' .. bg)
end

local groups = {
    ColorColumn = { bg = c.gray },
    Comment = { fg = c.gray },
    Cursor = { bg = c.white },
    CursorLine = { bg = c.highlight },
    CursorLineNr = { bg = c.highlight, fg = c.white },
    EndOfBuffer = { fg = c.gray },
    Error = { fg = c.red, gui = "bold" },
    ErrorMsg = { fg = c.red, gui = "bold" },
    FoldColumn = { fg = c.gray, gui = "bold" },
    Folded = { fg = c.gray, gui = "bold" },
    LineNr = { fg = c.gray },
    Normal = { fg = c.foreground },
    SignColumn = { bg = c.background },
    VertSplit = { fg = c.gray, bg = c.background },
    Visual = { bg = c.highlight },
    VisualNOS = { bg = c.highlight },
    WarningMsg = { fg = c.red },
    Whitespace = { fg = c.gray },
    NormalFloat = { bg = c.background_lighter },
    Pmenu = { bg = c.background_lighter },
    Identifier = { fg = c.magenta },
    -- Boolean = { fg = c.yellow },
    -- Delimiter = { fg = c.gray },
    -- Directory = { fg = c.blue },
    -- IncSearch = { bg = c.yellow, fg = c.background },
    -- Macro = { fg = c.magenta },
    -- MatchParen = { bg = c.background, fg = c.yellow, gui = "underline"},
    -- ModeMsg = { fg = c.foreground, gui = "bold" },
    -- MoreMsg = { fg = c.blue, gui = "bold" },
    -- NormalFloat = { fg = c.foreground },
    -- NonText = { fg = c.foreground, gui = "bold" },
    -- PreProc = { fg = c.blue },
    -- Question = { fg = c.blue },
    -- QuickFixLine = { bg = c.highlight, gui = "bold" },
    -- Repeat = { fg = c.magenta },
    -- Search = { bg = c.yellow, fg = c.background },
    -- Special = { fg = c.red },
    -- SpecialChar = { fg = c.red },
    -- Statement = { fg = c.magenta },
    -- Structure = { fg = c.magenta },
    -- Substitute = { bg = c.red, fg = c.background },
    -- Title = { fg = c.foreground, gui = "bold" },
    -- Todo = { fg = c.background, bg = c.foreground, gui = "bold" },

    -- Treesitter slowly attempting to replace all the things
    TSCharacter = { fg = c.green },
    TSComment = { fg = c.gray },
    TSConstant = { fg = c.magenta },
    TSConstructor = { fg = c.blue },
    TSConditional = { fg = c.magenta },
    TSField = { fg = c.red },
    TSFuncBuiltin = { fg = c.functions },
    TSFunction = { fg = c.functions },
    TSInclude = { fg = c.magenta },
    TSKeyword = { fg = c.magenta },
    TSKeywordFunction = { fg = c.functions },
    TSMethod = { fg = c.functions },
    TSNumber = { fg = c.foreground },
    TSOperator = { fg = c.magenta },
    TSParameter = { fg = c.blue },
    TSProperty = { fg = c.white },
    TSPunctBracket = { fg = c.white },
    TSPunctDelimiter = { fg = c.red },
    TSPunctSpecial = { fg = c.red },
    TSRepeat = { fg = c.magenta },
    TSString = { fg = c.green },
    TSStringEscape = { fg = c.red },
    TSType = { fg = c.yellow },
    TSVariable = { fg = c.white },
    TSVariableBuiltin = { fg = c.white },
    TSNamespace = { fg = c.blue },

    -- LSP
    LspDiagnosticsDefaultWarning = { fg = c.lsp_warn },
    LspDiagnosticsDefaultError = { fg = c.lsp_error },
    LspDiagnosticsDefaultHint = { fg = c.lsp_hint },
    LspDiagnosticsDefaultInformation = { fg = c.lsp_info },
    DiagnosticError = { fg = c.lsp_error },
    DiagnosticHint = { fg = c.lsp_hint },
    DiagnosticInfo = { fg = c.lsp_info },
    DiagnosticWarn = { fg = c.lsp_warn },
    DiagnosticFloatingError = { fg = c.lsp_error },
    DiagnosticFloatingHint = { fg = c.lsp_hint },
    DiagnosticFloatingInfo = { fg = c.lsp_info },
    DiagnosticFloatingWarn = { fg = c.lsp_warn },
    DiagnosticSignError = { fg = c.lsp_error },
    DiagnosticSignHint = { fg = c.lsp_hint },
    DiagnosticSignInfo = { fg = c.lsp_info },
    DiagnosticSignWarn = { fg = c.lsp_warn },
    DiagnosticVirtualTextError = { bg = blend(c.lsp_error, 0.1), fg = c.lsp_error, gui = "bold" },
    DiagnosticVirtualTextHint = { bg = blend(c.lsp_hint, 0.1), fg = c.lsp_hint, gui = "bold" },
    DiagnosticVirtualTextInfo = { bg = blend(c.lsp_info, 0.1), fg = c.lsp_info, gui = "bold" },
    DiagnosticVirtualTextWarn = { bg = blend(c.lsp_warn, 0.1), fg = c.lsp_warn, gui = "bold" },

    --- Plugins:
    IndentBlanklineChar = { fg = c.indent_line },

    -- vim-illuminate
    illuminatedWord = { bg = c.illuminate },

    CmpItemAbbrDeprecated = { fg = c.red },

    CmpItemAbbrMatch = { fg = c.blue },
    CmpItemAbbrMatchFuzzy = { fg = c.blue },

    CmpItemKindVariable = { fg = c.foreground },
    CmpItemKindInterface = { fg = c.magenta },
    CmpItemKindText = { fg = c.foreground },

    CmpItemKindFunction = { fg = c.functions },
    CmpItemKindMethod = { fg = c.functions },

    CmpItemKindKeyword = { fg = c.magenta },
    CmpItemKindProperty = { fg = c.foreground },
    CmpItemKindUnit = { fg = c.foreground },

    CmpItemMenu = { bg = c.background_lighter },

    -- TODO: try and get a background highlight for the selectied completion
    -- item because it will just show up as grey

    FidgetTitle = { bg = c.background },
    FidgetTask = { bg = c.background },

    --- Filetypes:
    -- for when you use nvim as your manpager :^)
    manOptionDesc = { fg = c.red },
    manSectionHeading = { fg = c.magenta },
    manSubheading = { fg = c.magenta },
    manHeader = { fg = c.white, gui = "bold" },

    markdownH1Delimiter = { fg = c.indent_line },
    markdownH2Delimiter = { fg = c.indent_line },
    markdownH3Delimiter = { fg = c.indent_line },
    markdownH4Delimiter = { fg = c.indent_line },
    markdownH5Delimiter = { fg = c.indent_line },
    markdownH6Delimiter = { fg = c.indent_line },
    markdownH1 = { gui = "bold" },
    markdownH2 = { gui = "bold" },
    markdownH3 = { gui = "bold" },
    markdownH4 = { gui = "bold" },
    markdownH5 = { gui = "bold" },
    markdownH6 = { gui = "bold" },
    markdownListMarker = { fg = c.magenta },
    markdownUrl = { fg = c.blue },
    markdownCode = { fg = c.white },

    bashTSParameter = { fg = c.foreground },
    bashTSVariable = { fg = c.foreground },
}

for group, styles in pairs(groups) do
    highlight(group, styles)
end
