local themes = require("rasmus.colors")
local M = {}

M.highlight = function(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg=" .. color.fg or "guifg=NONE"
  local bg = color.bg and "guibg=" .. color.bg or "guibg=NONE"
  local sp = color.sp and "guisp=" .. color.sp or ""
  vim.api.nvim_command("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

-- local set_terminal_colors = function(c)
--   vim.g.terminal_color_0 = c.black
--   vim.g.terminal_color_1 = c.red
--   vim.g.terminal_color_2 = c.green
--   vim.g.terminal_color_3 = c.yellow
--   vim.g.terminal_color_4 = c.blue
--   vim.g.terminal_color_5 = c.magenta
--   vim.g.terminal_color_6 = c.cyan
--   vim.g.terminal_color_7 = c.white
--   vim.g.terminal_color_8 = c.bright_black
--   vim.g.terminal_color_9 = c.bright_red
--   vim.g.terminal_color_10 = c.bright_green
--   vim.g.terminal_color_11 = c.bright_yellow
--   vim.g.terminal_color_12 = c.bright_blue
--   vim.g.terminal_color_13 = c.bright_magenta
--   vim.g.terminal_color_14 = c.bright_cyan
--   vim.g.terminal_color_15 = c.bright_white
--   vim.g.terminal_color_background = c.bg
--   vim.g.terminal_color_foreground = c.fg
-- end

local set_groups = function(c)
  local groups = {
    -- Base editor highlight groups
    Normal                     = { fg = c.fg, bg = c.bg }, -- normal text and background color
    NormalNC                   = { fg = c.fg, bg = c.bg }, -- normal text in non-current windows
    SignColumn                 = { fg = c.fg, bg = c.bg }, -- column where signs are displayed
    EndOfBuffer                = { fg = c.fg2 }, -- ~ lines at the end of a buffer
    NormalFloat                = { fg = c.fg, bg = c.bg2 }, -- normal text and background color for floating windows
    FloatBorder                = { fg = c.c2, bg = c.bg },
    ColorColumn                = { fg = c.none, bg = c.bg2 }, --  used for the columns set with 'colorcolumn'
    Conceal                    = { fg = c.c2 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor                     = { fg = c.none, bg = c.none, style = "reverse" }, -- the character under the cursor
    CursorIM                   = { fg = c.none, bg = c.none, style = "reverse" }, -- like Cursor, but used when in IME mode
    Directory                  = { fg = c.c3, bg = c.none, style = "bold" }, -- directory names (and other special names in listings)
    DiffAdd                    = { fg = c.add, bg = c.none, style = "reverse" }, -- diff mode: Added line
    DiffChange                 = { fg = c.change, bg = c.none, style = "reverse" }, --  diff mode: Changed line
    DiffDelete                 = { fg = c.delete, bg = c.none, style = "reverse" }, -- diff mode: Deleted line
    DiffText                   = { fg = c.fg, bg = c.none, style = "reverse" }, -- diff mode: Changed text within a changed line
    ErrorMsg                   = { fg = c.error }, -- error messages
    Folded                     = { fg = c.c2, bg = c.none, style = "italic" },
    FoldColumn                 = { fg = c.c3 },
    IncSearch                  = { style = "reverse" },
    LineNr                     = { fg = c.fg2 },
    CursorLineNr               = { fg = c.fg2 },
    MatchParen                 = { fg = c.mb, style = "bold" },
    ModeMsg                    = { fg = c.c7, style = "bold" },
    MoreMsg                    = { fg = c.c7, style = "bold" },
    NonText                    = { fg = c.bg5 },
    Pmenu                      = { fg = c.fg, bg = c.bg2 },
    PmenuSel                   = { fg = c.bg, bg = c.bg3 },
    PmenuSbar                  = { fg = c.fg, bg = c.bg2 },
    PmenuThumb                 = { fg = c.fg, bg = c.bg3 },
    Question                   = { fg = c.fg, style = "bold" },
    QuickFixLine               = { fg = c.none, bg = c.bg2, style = "bold,italic" },
    qfLineNr                   = { fg = c.none, bg = c.bg2 },
    Search                     = { style = "reverse" },
    SpecialKey                 = { fg = c.bg5 },
    SpellBad                   = { fg = c.error, bg = c.none, style = "italic,undercurl" },
    SpellCap                   = { fg = c.c3, bg = c.none, style = "italic,undercurl" },
    SpellLocal                 = { fg = c.c7, bg = c.none, style = "italic,undercurl" },
    SpellRare                  = { fg = c.c7, bg = c.none, style = "italic,undercurl" },
    StatusLine                 = { fg = c.fg3, bg = c.bg4 },
    -- StatusLineNC               = { fg = c.gray06, bg = c.fg },
    StatusLineTerm             = { fg = c.fg3, bg = c.bg4 },
    StatusLineTermNC           = { fg = c.fg3, bg = c.bg4 },
    TabLineFill                = { fg = c.fg2, bg = c.bg2 },
    TablineSel                 = { fg = c.fg, bg = c.bg },
    Tabline                    = { fg = c.fg2, bg = c.bg2 },
    Title                      = { fg = c.c7, bg = c.none, style = "bold" },
    Visual                     = { fg = c.none, bg = c.bg2 },
    VisualNOS                  = { fg = c.none, bg = c.bg2 },
    WarningMsg                 = { fg = c.warning, style = "bold" },
    WildMenu                   = { fg = c.bg, bg = c.c3, style = "bold" },
    CursorColumn               = { fg = c.none, bg = c.bg2 },
    CursorLine                 = { fg = c.none, bg = c.bg2 },
    ToolbarLine                = { fg = c.fg, bg = c.fg },
    ToolbarButton              = { fg = c.fg, bg = c.none, style = "bold" },
    NormalMode                 = { fg = c.c7, bg = c.none, style = "reverse" },
    InsertMode                 = { fg = c.fg, bg = c.none, style = "reverse" },
    VisualMode                 = { fg = c.c7, bg = c.none, style = "reverse" },
    VertSplit                  = { fg = c.bg2 },
    CommandMode                = { fg = c.c2, bg = c.none, style = "reverse" },
    Warnings                   = { fg = c.warning },
    healthError                = { fg = c.error },
    healthSuccess              = { fg = c.c7 },
    healthWarning              = { fg = c.warning },
    --common
    Type                       = { fg = c.c7 }, -- int, long, char, etc.
    StorageClass               = { fg = c.c7 }, -- static, register, volatile, etc.
    Structure                  = { fg = c.fg }, -- struct, union, enum, etc.
    Constant                   = { fg = c.c7 }, -- any constant
    Comment                    = { fg = c.c2, bg = c.none }, -- italic comments
    Conditional                = { fg = c.c3, bg = c.none }, -- italic if, then, else, endif, switch, etc.
    Keyword                    = { fg = c.c3, bg = c.none }, -- italic for, do, while, etc.
    Repeat                     = { fg = c.c3, bg = c.none }, -- italic any other keyword
    Boolean                    = { fg = c.c7, bg = c.none }, -- true , false
    Function                   = { fg = c.c3, bg = c.none },
    Identifier                 = { fg = c.c3, bg = c.none }, -- any variable name
    String                     = { fg = c.c7, bg = c.none }, -- Any string
    Character                  = { fg = c.c7 }, -- any character constant: 'c', '\n'
    Number                     = { fg = c.c7 }, -- a number constant: 5
    Float                      = { fg = c.c7 }, -- a floating point constant: 2.3e10
    Statement                  = { fg = c.c3 }, -- any statement
    Label                      = { fg = c.c7 }, -- case, default, etc.
    Operator                   = { fg = c.yellow }, -- sizeof", "+", "*", etc.
    Exception                  = { fg = c.yellow }, -- try, catch, throw
    PreProc                    = { fg = c.fg }, -- generic Preprocessor
    Include                    = { fg = c.c3 }, -- preprocessor #include
    Define                     = { fg = c.c7 }, -- preprocessor #define
    Macro                      = { fg = c.c3 }, -- same as Define
    Typedef                    = { fg = c.c7 }, -- A typedef
    PreCondit                  = { fg = c.c7 }, -- preprocessor #if, #else, #endif, etc.
    Special                    = { fg = c.c3, bg = c.none, "italic" }, -- any special symbol
    SpecialChar                = { fg = c.c7 }, -- special character in a constant
    Tag                        = { fg = c.yellow }, -- you can use CTRL-] on this
    Delimiter                  = { fg = c.fg }, -- character that needs attention like , or .
    SpecialComment             = { fg = c.c3 }, -- special things inside a comment
    Debug                      = { fg = c.fg }, -- debugging statements
    Underlined                 = { fg = c.c7, bg = c.none, style = "underline" }, -- text that stands out, HTML links
    Ignore                     = { fg = c.fg }, -- left blank, hidden
    Error                      = { fg = c.error, bg = c.none, style = "bold,underline" }, -- any erroneous construct
    Todo                       = { fg = c.c7, bg = c.none, style = "bold,italic" }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    -- HTML
    htmlArg                    = { fg = c.fg, style = "italic" },
    htmlBold                   = { fg = c.fg, bg = c.none, style = "bold" },
    htmlEndTag                 = { fg = c.fg },
    htmlStyle                  = { fg = c.c7, bg = c.none, style = "italic" },
    htmlLink                   = { fg = c.c7, style = "underline" },
    htmlSpecialChar            = { fg = c.yellow },
    htmlSpecialTagName         = { fg = c.c3, style = "bold" },
    htmlTag                    = { fg = c.fg },
    htmlTagN                   = { fg = c.yellow },
    htmlTagName                = { fg = c.yellow },
    htmlTitle                  = { fg = c.fg },
    htmlH1                     = { fg = c.c3, style = "bold" },
    htmlH2                     = { fg = c.c3, style = "bold" },
    htmlH3                     = { fg = c.c3, style = "bold" },
    htmlH4                     = { fg = c.c3, style = "bold" },
    htmlH5                     = { fg = c.c3, style = "bold" },
    -- Markdown
    markdownH1                 = { fg = c.none, style = "bold" },
    markdownH2                 = { fg = c.none, style = "bold" },
    markdownH3                 = { fg = c.none, style = "bold" },
    markdownH4                 = { fg = c.none, style = "bold" },
    markdownH5                 = { fg = c.none, style = "bold" },
    markdownH6                 = { fg = c.none, style = "bold" },
    markdownHeadingDelimiter   = { fg = c.c2 },
    markdownHeadingRule        = { fg = c.c2 },
    markdownId                 = { fg = c.c7 },
    markdownIdDeclaration      = { fg = c.c3 },
    markdownIdDelimiter        = { fg = c.c7 },
    markdownLinkDelimiter      = { fg = c.c2 },
    markdownLinkText           = { fg = c.c8, style = "italic" },
    markdownListMarker         = { fg = c.c2 },
    markdownOrderedListMarker  = { fg = c.yellow },
    markdownRule               = { fg = c.c2 },
    markdownUrl                = { fg = c.c7, bg = c.none },
    markdownBlockquote         = { fg = c.fg },
    markdownBold               = { fg = c.fg, bg = c.none, style = "bold" },
    markdownItalic             = { fg = c.fg, bg = c.none, style = "italic" },
    markdownCode               = { fg = c.fg, bg = c.bg2 },
    markdownCodeBlock          = { fg = c.fg, bg = c.bg2 },
    markdownCodeDelimiter      = { fg = c.fg, bg = c.bg2 },
    -- TreeSitter highlight groups
    TSAnnotation               = { fg = c.fg }, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    TSAttribute                = { fg = c.fg }, -- (unstable) TODO: docs
    TSBoolean                  = { fg = c.c1 }, -- true or false
    TSCharacter                = { fg = c.fg }, -- For characters.
    TSComment                  = { fg = c.c2, }, -- For comment blocks.
    TSConditional              = { fg = c.c3 }, -- For keywords related to conditionnals.
    TSConstant                 = { fg = c.c4 }, -- For constants
    TSConstBuiltin             = { fg = c.c5 }, -- For constants that are built in the language: `nil` in Lua.
    TSConstMacro               = { fg = c.fg }, -- For constants that are defined by macros: `NULL` in C.
    TSConstructor              = { fg = c.c4 }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    TSError                    = { fg = c.error }, -- For syntax/parser errors.
    TSException                = { fg = c.error }, -- For exception related keywords.
    TSField                    = { fg = c.fg }, -- For fields.
    TSFloat                    = { fg = c.c5 }, -- For floats.
    TSFunction                 = { fg = c.fg0, style = "bold" }, -- For fuction definitions.
    TSFunctionCall             = { fg = c.fg }, -- For fuction calls.
    TSFuncBuiltin              = { fg = c.c5 }, -- For builtin functions: `table.insert` in Lua.
    TSFuncMacro                = { fg = c.fg }, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude                  = { fg = c.c3 }, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSKeyword                  = { fg = c.c3 }, -- For keywords that don't fall in previous categories.
    TSKeywordFunction          = { fg = c.c3 }, -- For keywords used to define a fuction.
    TSKeywordOperator          = { fg = c.fg }, -- For operators that are English words, e.g. `and`, `as`, `or`.
    TSKeywordReturn            = { fg = c.c3 }, -- For the `return` and `yield` keywords.
    TSLabel                    = { fg = c.fg }, -- For labels: `label:` in C and `:label:` in Lua.
    TSMethod                   = { fg = c.fg0, style = "bold" }, -- For method definitions.
    TSMethodCall               = { fg = c.fg }, -- For method calls.
    TSNamespace                = { fg = c.fg }, -- For identifiers referring to modules and namespaces.
    -- TSNone = {}, -- No highlighting. Don't change the values of this highlight group.
    TSNumber                   = { fg = c.c5 }, -- For all numbers
    TSOperator                 = { fg = c.c6 }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter                = { fg = c.fg }, -- For parameters of a function.
    TSParameterReference       = { fg = c.fg }, -- For references to parameters of a function.
    TSProperty                 = { fg = c.fg }, -- Same as `TSField`.
    TSPunctDelimiter           = { fg = c.c10 }, -- For delimiters ie: `.`
    TSPunctBracket             = { fg = c.c10 }, -- For brackets and parens.
    TSPunctSpecial             = { fg = c.c10 }, -- For special punctutation that does not fall in the catagories before.
    TSRepeat                   = { fg = c.c3 }, -- For keywords related to loops.
    TSString                   = { fg = c.c7 }, -- For strings.
    TSStringRegex              = { fg = c.c7 }, -- For regexes.
    TSStringEscape             = { fg = c.fg }, -- For escape characters within a string.
    TSStringSpecial            = { fg = c.c7 }, -- For strings with special meaning that don't fit into the above categories.
    TSSymbol                   = { fg = c.fg }, -- For identifiers referring to symbols or atoms.
    TSTag                      = { fg = c.fg }, -- Tags like html tag names.
    TSTagAttribute             = { fg = c.fg, style = "italic" }, -- For html tag attributes.
    TSTagDelimiter             = { fg = c.fg }, -- Tag delimiter like `<` `>` `/`
    TSText                     = { fg = c.fg }, -- For strings considered text in a markup language.
    TSStrong                   = { fg = c.fg, style = "bold" }, -- For text to be represented in bold.
    TSEmphasis                 = { fg = c.fg, style = "bold,italic" }, -- For text to be represented with emphasis.
    TSUnderline                = { fg = c.fg, bg = c.none, style = "underline" }, -- For text to be represented with an underline.
    TSStrike                   = {}, -- For strikethrough text.
    TSTitle                    = { fg = c.fg, bg = c.none, style = "bold" }, -- Text that is part of a title.
    TSLiteral                  = { fg = c.fg }, -- Literal text.
    TSURI                      = { fg = c.c7 }, -- Any URL like a link or email.
    TSMath                     = { fg = c.fg }, -- For LaTeX-like math environments.
    TSTextReference            = { fg = c.fg }, -- For footnotes, text references, citations.
    TSEnvironment              = { fg = c.fg }, -- For text environments of markup languages.
    TSEnvironmentName          = { fg = c.fg }, -- For the name/the string indicating the type of text environment.
    TSNote                     = { fg = c.c3, style = "italic" }, -- Text representation of an informational note.
    TSWarning                  = { fg = c.c6, style = "italic" }, -- Text representation of a warning note.
    TSDanger                   = { fg = c.c8, style = "italic" }, -- Text representation of a danger note.
    TSType                     = { fg = c.c9 }, -- For types.
    TSTypeBuiltin              = { fg = c.c9 }, -- For builtin types.
    TSVariable                 = { fg = c.fg }, -- Any variable name that does not have another highlight.
    TSVariableBuiltin          = { fg = c.c6 }, -- Variable names that are defined by the languages, like `this` or `self`.
    -- highlight groups for the native LSP client
    LspReferenceText           = { fg = c.bg, bg = c.c5 }, -- used for highlighting "text" references
    LspReferenceRead           = { fg = c.bg, bg = c.c5 }, -- used for highlighting "read" references
    LspReferenceWrite          = { fg = c.bg, bg = c.c5 }, -- used for highlighting "write" references
    -- Diagnostics
    DiagnosticError            = { fg = c.error }, -- base highlight group for "Error"
    DiagnosticWarn             = { fg = c.warning }, -- base highlight group for "Warning"
    DiagnosticInfo             = { fg = c.hint }, -- base highlight group from "Information"
    DiagnosticHint             = { fg = c.hint }, -- base highlight group for "Hint"
    DiagnosticUnderlineError   = { fg = c.error, style = "undercurl", sp = c.error }, -- used to underline "Error" diagnostics.
    DiagnosticUnderlineWarn    = { fg = c.warning, style = "undercurl", sp = c.warning }, -- used to underline "Warning" diagnostics.
    DiagnosticUnderlineInfo    = { fg = c.hint, style = "undercurl", sp = c.hint }, -- used to underline "Information" diagnostics.
    DiagnosticUnderlineHint    = { fg = c.hint, style = "undercurl", sp = c.hint }, -- used to underline "Hint" diagnostics.
    -- Plugins highlight groups
    -- Diff
    diffAdded                  = { fg = c.add },
    diffRemoved                = { fg = c.delete },
    diffChanged                = { fg = c.change },
    diffOldFile                = { fg = c.fg },
    diffNewFile                = { fg = c.fg },
    diffFile                   = { fg = c.c2 },
    diffLine                   = { fg = c.c7 },
    diffIndexLine              = { fg = c.c5 },
    -- GitSigns
    GitSignsAdd                = { fg = c.add }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr              = { fg = c.add }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn              = { fg = c.add }, -- diff mode: Added line |diff.txt|
    GitSignsChange             = { fg = c.change }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr           = { fg = c.change }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn           = { fg = c.change }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete             = { fg = c.delete }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr           = { fg = c.delete }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn           = { fg = c.delete }, -- diff mode: Deleted line |diff.txt|
    -- Telescope
    TelescopeSelectionCaret    = { fg = c.c3, bg = c.fg },
    TelescopeBorder            = { fg = c.c2 },
    TelescopePromptBorder      = { fg = c.c2 },
    TelescopeResultsBorder     = { fg = c.c2 },
    TelescopePreviewBorder     = { fg = c.c2 },
    TelescopeMatching          = { fg = c.yellow },
    TelescopePromptPrefix      = { fg = c.c3 },
    -- NvimTree
    NvimTreeRootFolder         = { fg = c.c7, style = "italic" },
    NvimTreeNormal             = { fg = c.fg, bg = c.bg },
    NvimTreeImageFile          = { fg = c.c5 },
    NvimTreeExecFile           = { fg = c.c7 },
    NvimTreeSpecialFile        = { fg = c.c5 },
    NvimTreeFolderName         = { fg = c.c3 },
    NvimTreeOpenedFolderName   = { fg = c.c3 },
    NvimTreeOpenedFile         = { fg = c.c3 },
    NvimTreeEmptyFolderName    = { fg = c.c2 },
    NvimTreeFolderIcon         = { fg = c.fg },
    NvimTreeIndentMarker       = { fg = c.bg5 },
    NvimTreeGitDirty           = { fg = c.fg },
    NvimTreeGitStaged          = { fg = c.c7 },
    NvimTreeGitRenamed         = { fg = c.yellow },
    NvimTreeGitNew             = { fg = c.c7 },
    NvimTreeGitDeleted         = { fg = c.error },
    -- Indent Blankline
    IndentBlanklineChar        = { fg = c.bg5 },
    IndentBlanklineContextChar = { fg = c.c2 },
    -- nvim-cmp
    CmpItemAbbrDeprecated      = { fg = c.fg, style = "strikethrough" },
    CmpItemAbbrMatch           = { fg = c.c6 },
    CmpItemAbbrMatchFuzzy      = { fg = c.c6 },
    CmpItemKindVariable        = { fg = c.c3 },
    CmpItemKindInterface       = { fg = c.c3 },
    CmpItemKindText            = { fg = c.c3 },
    CmpItemKindFunction        = { fg = c.c5 },
    CmpItemKindMethod          = { fg = c.c5 },
    CmpItemKindKeyword         = { fg = c.fg },
    CmpItemKindProperty        = { fg = c.fg },
    CmpItemKindUnit            = { fg = c.fg },
    -- Custom highlight groups for use in statusline plugins
    StatusLineNormalMode       = { fg = c.fg, bg = c.bg2 },
    StatusLineInsertMode       = { fg = c.fg, bg = c.bg5 },
    StatusLineVisualMode       = { fg = c.fg, bg = c.fg },
    StatusLineReplaceMode      = { fg = c.fg, bg = c.c2 },
    StatusLineTerminalMode     = { fg = c.fg, bg = c.c2 },
    StatusLineHint             = { fg = c.c7, bg = c.fg },
    StatusLineInfo             = { fg = c.c3, bg = c.fg },
    StatusLineWarn             = { fg = c.warning, bg = c.fg },
    StatusLineError            = { fg = c.error, bg = c.fg },
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

  -- set_terminal_colors(c)
  set_groups(c)
end

return M
