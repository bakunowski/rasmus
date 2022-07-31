local themes = require("rasmus.colors")
local M = {}

M.highlight = function(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""
  vim.api.nvim_command("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

local set_terminal_colors = function(c)
  vim.g.terminal_color_0 = c.black
  vim.g.terminal_color_1 = c.red
  vim.g.terminal_color_2 = c.green
  vim.g.terminal_color_3 = c.yellow
  vim.g.terminal_color_4 = c.blue
  vim.g.terminal_color_5 = c.magenta
  vim.g.terminal_color_6 = c.cyan
  vim.g.terminal_color_7 = c.white
  vim.g.terminal_color_8 = c.bright_black
  vim.g.terminal_color_9 = c.bright_red
  vim.g.terminal_color_10 = c.bright_green
  vim.g.terminal_color_11 = c.bright_yellow
  vim.g.terminal_color_12 = c.bright_blue
  vim.g.terminal_color_13 = c.bright_magenta
  vim.g.terminal_color_14 = c.bright_cyan
  vim.g.terminal_color_15 = c.bright_white
  vim.g.terminal_color_background = c.bg
  vim.g.terminal_color_foreground = c.fg
end

local set_groups = function(c)
  local groups = {
    -- Base
    -- Editor highlight groups
    Normal                     = { fg = c.fg, bg = c.bg }, -- normal text and background color
    NormalNC                   = { fg = c.fg, bg = c.bg }, -- normal text in non-current windows
    SignColumn                 = { fg = c.fg, bg = c.bg }, -- column where signs are displayed
    EndOfBuffer                = { fg = c.gray03 }, -- ~ lines at the end of a buffer
    NormalFloat                = { fg = c.fg, bg = c.gray02 }, -- normal text and background color for floating windows
    FloatBorder                = { fg = c.blue, bg = c.gray02 },
    ColorColumn                = { fg = c.none, bg = c.gray01 }, --  used for the columns set with 'colorcolumn'
    Conceal                    = { fg = c.gray05 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                     = { fg = c.cyan, bg = c.none, style = "reverse" }, -- the character under the cursor
    CursorIM                   = { fg = c.cyan, bg = c.none, style = "reverse" }, -- like Cursor, but used when in IME mode
    Directory                  = { fg = c.blue, bg = c.none, style = "bold" }, -- directory names (and other special names in listings)
    DiffAdd                    = { fg = c.bright_green, bg = c.none, style = "reverse" }, -- diff mode: Added line
    DiffChange                 = { fg = c.bright_blue, bg = c.none, style = "reverse" }, --  diff mode: Changed line
    DiffDelete                 = { fg = c.bright_red, bg = c.none, style = "reverse" }, -- diff mode: Deleted line
    DiffText                   = { fg = c.fg, bg = c.none, style = "reverse" }, -- diff mode: Changed text within a changed line
    ErrorMsg                   = { fg = c.red }, -- error messages
    Folded                     = { fg = c.gray05, bg = c.none, style = "italic" },
    FoldColumn                 = { fg = c.blue },
    IncSearch                  = { style = "reverse" },
    LineNr                     = { fg = c.gray08 },
    CursorLineNr               = { fg = c.gray07 },
    MatchParen                 = { fg = c.yellow2, style = "bold" },
    ModeMsg                    = { fg = c.cyan, style = "bold" },
    MoreMsg                    = { fg = c.cyan, style = "bold" },
    NonText                    = { fg = c.gray03 },
    Pmenu                      = { fg = c.gray07, bg = c.gray02 },
    PmenuSel                   = { fg = c.bg, bg = c.gray06 },
    PmenuSbar                  = { fg = c.fg, bg = c.gray02 },
    PmenuThumb                 = { fg = c.fg, bg = c.gray05 },
    Question                   = { fg = c.green, style = "bold" },
    QuickFixLine               = { fg = c.blue, bg = c.gray01, style = "bold,italic" },
    qfLineNr                   = { fg = c.blue, bg = c.gray01 },
    Search                     = { style = "reverse" },
    SpecialKey                 = { fg = c.gray03 },
    SpellBad                   = { fg = c.red, bg = c.none, style = "italic,undercurl" },
    SpellCap                   = { fg = c.blue, bg = c.none, style = "italic,undercurl" },
    SpellLocal                 = { fg = c.cyan, bg = c.none, style = "italic,undercurl" },
    SpellRare                  = { fg = c.cyan, bg = c.none, style = "italic,undercurl" },
    StatusLine                 = { fg = c.gray07, bg = c.gray01 },
    StatusLineNC               = { fg = c.gray06, bg = c.gray01 },
    StatusLineTerm             = { fg = c.gray07, bg = c.gray01 },
    StatusLineTermNC           = { fg = c.gray07, bg = c.gray01 },
    TabLineFill                = { fg = c.gray05, bg = c.gray01 },
    TablineSel                 = { fg = c.gray07, bg = c.bg },
    Tabline                    = { fg = c.gray07, bg = c.gray01 },
    Title                      = { fg = c.cyan, bg = c.none, style = "bold" },
    Visual                     = { fg = c.none, bg = c.gray03 },
    VisualNOS                  = { fg = c.none, bg = c.gray03 },
    WarningMsg                 = { fg = c.yellow, style = "bold" },
    WildMenu                   = { fg = c.bg, bg = c.blue, style = "bold" },
    CursorColumn               = { fg = c.none, bg = c.gray02 },
    CursorLine                 = { fg = c.none, bg = c.gray01 },
    ToolbarLine                = { fg = c.fg, bg = c.gray01 },
    ToolbarButton              = { fg = c.fg, bg = c.none, style = "bold" },
    NormalMode                 = { fg = c.cyan, bg = c.none, style = "reverse" },
    InsertMode                 = { fg = c.green, bg = c.none, style = "reverse" },
    VisualMode                 = { fg = c.cyan, bg = c.none, style = "reverse" },
    VertSplit                  = { fg = c.gray02 },
    CommandMode                = { fg = c.gray05, bg = c.none, style = "reverse" },
    Warnings                   = { fg = c.yellow },
    healthError                = { fg = c.red },
    healthSuccess              = { fg = c.green },
    healthWarning              = { fg = c.yellow },
    --common
    Type                       = { fg = c.cyan }, -- int, long, char, etc.
    StorageClass               = { fg = c.cyan }, -- static, register, volatile, etc.
    Structure                  = { fg = c.fg }, -- struct, union, enum, etc.
    Constant                   = { fg = c.cyan }, -- any constant
    Comment                    = { fg = c.gray05, bg = c.none }, -- italic comments
    Conditional                = { fg = c.blue, bg = c.none }, -- italic if, then, else, endif, switch, etc.
    Keyword                    = { fg = c.blue, bg = c.none }, -- italic for, do, while, etc.
    Repeat                     = { fg = c.blue, bg = c.none }, -- italic any other keyword
    Boolean                    = { fg = c.cyan, bg = c.none }, -- true , false
    Function                   = { fg = c.blue, bg = c.none },
    Identifier                 = { fg = c.blue, bg = c.none }, -- any variable name
    String                     = { fg = c.cyan, bg = c.none }, -- Any string
    Character                  = { fg = c.cyan }, -- any character constant: 'c', '\n'
    Number                     = { fg = c.cyan }, -- a number constant: 5
    Float                      = { fg = c.cyan }, -- a floating point constant: 2.3e10
    Statement                  = { fg = c.blue }, -- any statement
    Label                      = { fg = c.cyan }, -- case, default, etc.
    Operator                   = { fg = c.yellow }, -- sizeof", "+", "*", etc.
    Exception                  = { fg = c.yellow }, -- try, catch, throw
    PreProc                    = { fg = c.red }, -- generic Preprocessor
    Include                    = { fg = c.blue }, -- preprocessor #include
    Define                     = { fg = c.cyan }, -- preprocessor #define
    Macro                      = { fg = c.blue }, -- same as Define
    Typedef                    = { fg = c.cyan }, -- A typedef
    PreCondit                  = { fg = c.cyan }, -- preprocessor #if, #else, #endif, etc.
    Special                    = { fg = c.blue, bg = c.none, "italic" }, -- any special symbol
    SpecialChar                = { fg = c.cyan }, -- special character in a constant
    Tag                        = { fg = c.yellow }, -- you can use CTRL-] on this
    Delimiter                  = { fg = c.gray07 }, -- character that needs attention like , or .
    SpecialComment             = { fg = c.blue }, -- special things inside a comment
    Debug                      = { fg = c.red }, -- debugging statements
    Underlined                 = { fg = c.cyan, bg = c.none, style = "underline" }, -- text that stands out, HTML links
    Ignore                     = { fg = c.gray07 }, -- left blank, hidden
    Error                      = { fg = c.red, bg = c.none, style = "bold,underline" }, -- any erroneous construct
    Todo                       = { fg = c.cyan, bg = c.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    -- HTML
    htmlArg                    = { fg = c.fg, style = "italic" },
    htmlBold                   = { fg = c.fg, bg = c.none, style = "bold" },
    htmlEndTag                 = { fg = c.fg },
    htmlStyle                  = { fg = c.cyan, bg = c.none, style = "italic" },
    htmlLink                   = { fg = c.cyan, style = "underline" },
    htmlSpecialChar            = { fg = c.yellow },
    htmlSpecialTagName         = { fg = c.blue, style = "bold" },
    htmlTag                    = { fg = c.fg },
    htmlTagN                   = { fg = c.yellow },
    htmlTagName                = { fg = c.yellow },
    htmlTitle                  = { fg = c.fg },
    htmlH1                     = { fg = c.blue, style = "bold" },
    htmlH2                     = { fg = c.blue, style = "bold" },
    htmlH3                     = { fg = c.blue, style = "bold" },
    htmlH4                     = { fg = c.blue, style = "bold" },
    htmlH5                     = { fg = c.blue, style = "bold" },
    -- Markdown
    markdownH1                 = { fg = c.bright_white, style = "bold" },
    markdownH2                 = { fg = c.bright_white, style = "bold" },
    markdownH3                 = { fg = c.bright_white, style = "bold" },
    markdownH4                 = { fg = c.bright_white, style = "bold" },
    markdownH5                 = { fg = c.bright_white, style = "bold" },
    markdownH6                 = { fg = c.bright_white, style = "bold" },
    markdownHeadingDelimiter   = { fg = c.gray05 },
    markdownHeadingRule        = { fg = c.gray05 },
    markdownId                 = { fg = c.cyan },
    markdownIdDeclaration      = { fg = c.blue },
    markdownIdDelimiter        = { fg = c.cyan },
    markdownLinkDelimiter      = { fg = c.gray05 },
    markdownLinkText           = { fg = c.bright_white, style = "italic" },
    markdownListMarker         = { fg = c.yellow },
    markdownOrderedListMarker  = { fg = c.yellow },
    markdownRule               = { fg = c.gray05 },
    markdownUrl                = { fg = c.gray06, bg = c.none },
    markdownBlockquote         = { fg = c.gray07 },
    markdownBold               = { fg = c.fg, bg = c.none, style = "bold" },
    markdownItalic             = { fg = c.fg, bg = c.none, style = "italic" },
    markdownCode               = { fg = c.fg, bg = c.gray02 },
    markdownCodeBlock          = { fg = c.fg, bg = c.gray02 },
    markdownCodeDelimiter      = { fg = c.fg, bg = c.gray02 },
    -- TreeSitter highlight groups
    TSAnnotation               = { fg = c.green }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSAttribute                = { fg = c.fg }, -- (unstable) TODO: docs
    TSBoolean                  = { fg = c.cyan2, bg = c.none }, -- true or false
    TSCharacter                = { fg = c.cyan }, -- For characters.
    TSComment                  = { fg = c.gray05, bg = c.none }, -- For comment blocks.
    TSConditional              = { fg = c.blue }, -- For keywords related to conditionnals.
    TSConstant                 = { fg = c.fg }, -- For constants
    TSConstBuiltin             = { fg = c.cyan2 }, -- For constants that are built in the language: `nil` in Lua.
    TSConstMacro               = { fg = c.cyan }, -- For constants that are defined by macros: `NULL` in C.
    TSConstructor              = { fg = c.gray07 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    TSError                    = { fg = c.red }, -- For syntax/parser errors.
    TSException                = { fg = c.yellow }, -- For exception related keywords.
    TSField                    = { fg = c.fg }, -- For fields.
    TSFloat                    = { fg = c.cyan }, -- For floats.
    TSFunction                 = { fg = c.fg }, -- For fuction (calls and definitions).
    TSFuncBuiltin              = { fg = c.fg }, -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro                = { fg = c.blue }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude                  = { fg = c.blue2 }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword                  = { fg = c.blue2 }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction          = { fg = c.blue2 }, -- For keywords used to define a fuction.
    TSKeywordOperator          = { fg = c.yellow }, -- For operators that are English words, e.g. `and`, `as`, `or`.
    TSKeywordReturn            = { fg = c.blue }, -- For the `return` and `yield` keywords.
    TSLabel                    = { fg = c.cyan }, -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod                   = { fg = c.fg }, -- For method calls and definitions.
    TSNamespace                = { fg = c.fg }, -- For identifiers referring to modules and namespaces.
    -- TSNone = {}, -- No highlighting. Don't change the values of this highlight group.
    TSNumber                   = { fg = c.cyan2 }, -- For all numbers
    TSOperator                 = { fg = c.yellow }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter                = { fg = c.fg }, -- For parameters of a function.
    TSParameterReference       = { fg = c.fg }, -- For references to parameters of a function.
    TSProperty                 = { fg = c.fg }, -- Same as `TSField`.
    TSPunctDelimiter           = { fg = c.gray05 }, -- For delimiters ie: `.`
    TSPunctBracket             = { fg = c.gray05 }, -- For brackets and parens.
    TSPunctSpecial             = { fg = c.green }, -- For special punctutation that does not fall in the catagories before.
    TSRepeat                   = { fg = c.blue }, -- For keywords related to loops.
    TSString                   = { fg = c.cyan }, -- For strings.
    TSStringRegex              = { fg = c.green }, -- For regexes.
    TSStringEscape             = { fg = c.cyan }, -- For escape characters within a string.
    TSStringSpecial            = { fg = c.green }, -- For strings with special meaning that don't fit into the above categories.
    TSSymbol                   = { fg = c.green }, -- For identifiers referring to symbols or atoms.
    TSTag                      = { fg = c.yellow }, -- Tags like html tag names.
    TSTagAttribute             = { fg = c.fg, style = "italic" }, -- For html tag attributes.
    TSTagDelimiter             = { fg = c.gray05 }, -- Tag delimiter like `<` `>` `/`
    TSText                     = { fg = c.fg }, -- For strings considered text in a markup language.
    TSStrong                   = { fg = c.bright_white, style = "bold" }, -- For text to be represented in bold.
    TSEmphasis                 = { fg = c.bright_white, style = "bold,italic" }, -- For text to be represented with emphasis.
    TSUnderline                = { fg = c.bright_white, bg = c.none, style = "underline" }, -- For text to be represented with an underline.
    TSStrike                   = {}, -- For strikethrough text.
    TSTitle                    = { fg = c.fg, bg = c.none, style = "bold" }, -- Text that is part of a title.
    TSLiteral                  = { fg = c.fg }, -- Literal text.
    TSURI                      = { fg = c.cyan }, -- Any URL like a link or email.
    TSMath                     = { fg = c.blue }, -- For LaTeX-like math environments.
    TSTextReference            = { fg = c.yellow }, -- For footnotes, text references, citations.
    TSEnvironment              = { fg = c.blue }, -- For text environments of markup languages.
    TSEnvironmentName          = { fg = c.bright_blue }, -- For the name/the string indicating the type of text environment.
    TSNote                     = { fg = c.blue, style = "italic" }, -- Text representation of an informational note.
    TSWarning                  = { fg = c.yellow, style = "italic" }, -- Text representation of a warning note.
    TSDanger                   = { fg = c.red, style = "italic" }, -- Text representation of a danger note.
    TSType                     = { fg = c.bright_yellow }, -- For types.
    TSTypeBuiltin              = { fg = c.bright_yellow }, -- For builtin types.
    TSVariable                 = { fg = c.fg }, -- Any variable name that does not have another highlight.
    TSVariableBuiltin          = { fg = c.yellow }, -- Variable names that are defined by the languages, like `this` or `self`.
    -- highlight groups for the native LSP client
    LspReferenceText           = { fg = c.bg, bg = c.magenta }, -- used for highlighting "text" references
    LspReferenceRead           = { fg = c.bg, bg = c.magenta }, -- used for highlighting "read" references
    LspReferenceWrite          = { fg = c.bg, bg = c.magenta }, -- used for highlighting "write" references
    -- Diagnostics
    DiagnosticError            = { fg = c.red }, -- base highlight group for "Error"
    DiagnosticWarn             = { fg = c.yellow }, -- base highlight group for "Warning"
    DiagnosticInfo             = { fg = c.blue }, -- base highlight group from "Information"
    DiagnosticHint             = { fg = c.cyan }, -- base highlight group for "Hint"
    DiagnosticUnderlineError   = { fg = c.red, style = "undercurl", sp = c.red }, -- used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    = { fg = c.yellow, style = "undercurl", sp = c.yellow }, -- used to underline "Warning" diagnostics.
    DiagnosticUnderlineInfo    = { fg = c.blue, style = "undercurl", sp = c.blue }, -- used to underline "Information" diagnostics.
    DiagnosticUnderlineHint    = { fg = c.cyan, style = "undercurl", sp = c.cyan }, -- used to underline "Hint" diagnostics.
    -- Plugins highlight groups
    -- Diff
    diffAdded                  = { fg = c.bright_green },
    diffRemoved                = { fg = c.bright_red },
    diffChanged                = { fg = c.bright_blue },
    diffOldFile                = { fg = c.gray04 },
    diffNewFile                = { fg = c.fg },
    diffFile                   = { fg = c.gray05 },
    diffLine                   = { fg = c.cyan },
    diffIndexLine              = { fg = c.magenta },
    -- GitSigns
    GitSignsAdd                = { fg = c.bright_green }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr              = { fg = c.bright_green }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn              = { fg = c.bright_green }, -- diff mode: Added line |diff.txt|
    GitSignsChange             = { fg = c.bright_yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr           = { fg = c.bright_yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn           = { fg = c.bright_yellow }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete             = { fg = c.bright_red }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr           = { fg = c.bright_red }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn           = { fg = c.bright_red }, -- diff mode: Deleted line |diff.txt|
    -- Telescope
    TelescopeSelectionCaret    = { fg = c.blue, bg = c.gray01 },
    TelescopeBorder            = { fg = c.gray05 },
    TelescopePromptBorder      = { fg = c.blue },
    TelescopeResultsBorder     = { fg = c.gray07 },
    TelescopePreviewBorder     = { fg = c.gray05 },
    TelescopeMatching          = { fg = c.yellow },
    TelescopePromptPrefix      = { fg = c.blue },
    -- NvimTree
    NvimTreeRootFolder         = { fg = c.cyan, style = "italic" },
    NvimTreeNormal             = { fg = c.fg, bg = c.bg },
    NvimTreeImageFile          = { fg = c.magenta },
    NvimTreeExecFile           = { fg = c.green },
    NvimTreeSpecialFile        = { fg = c.magenta },
    NvimTreeFolderName         = { fg = c.blue },
    NvimTreeOpenedFolderName   = { fg = c.bright_blue },
    NvimTreeOpenedFile         = { fg = c.bright_blue },
    NvimTreeEmptyFolderName    = { fg = c.gray05 },
    NvimTreeFolderIcon         = { fg = c.gray07 },
    NvimTreeIndentMarker       = { fg = c.gray03 },
    NvimTreeGitDirty           = { fg = c.gray07 },
    NvimTreeGitStaged          = { fg = c.cyan },
    NvimTreeGitRenamed         = { fg = c.yellow },
    NvimTreeGitNew             = { fg = c.green },
    NvimTreeGitDeleted         = { fg = c.red },
    -- Indent Blankline
    IndentBlanklineChar        = { fg = c.gray03 },
    IndentBlanklineContextChar = { fg = c.gray05 },
    -- nvim-cmp
    CmpItemAbbrDeprecated      = { fg = c.gray05, style = "strikethrough" },
    CmpItemAbbrMatch           = { fg = c.yellow },
    CmpItemAbbrMatchFuzzy      = { fg = c.yellow },
    CmpItemKindVariable        = { fg = c.blue },
    CmpItemKindInterface       = { fg = c.blue },
    CmpItemKindText            = { fg = c.blue },
    CmpItemKindFunction        = { fg = c.magenta },
    CmpItemKindMethod          = { fg = c.magenta },
    CmpItemKindKeyword         = { fg = c.fg },
    CmpItemKindProperty        = { fg = c.fg },
    CmpItemKindUnit            = { fg = c.fg },
    -- Custom highlight groups for use in statusline plugins
    StatusLineNormalMode       = { fg = c.black, bg = c.gray02 },
    StatusLineInsertMode       = { fg = c.black, bg = c.gray03 },
    StatusLineVisualMode       = { fg = c.black, bg = c.gray04 },
    StatusLineReplaceMode      = { fg = c.black, bg = c.gray05 },
    StatusLineTerminalMode     = { fg = c.black, bg = c.gray05 },
    StatusLineHint             = { fg = c.cyan, bg = c.gray01 },
    StatusLineInfo             = { fg = c.blue, bg = c.gray01 },
    StatusLineWarn             = { fg = c.yellow, bg = c.gray01 },
    StatusLineError            = { fg = c.red, bg = c.gray01 },
  }

  for group, parameters in pairs(groups) do
    M.highlight(group, parameters)
  end
end

M.colorscheme = function()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.api.nvim_command("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "rasmus"

  local c = {}
  if (vim.opt.background:get() == "dark") then
    c = themes.setup("dark")
  else
    c = themes.setup("light")
  end

  set_terminal_colors(c)
  set_groups(c)
end

return M
