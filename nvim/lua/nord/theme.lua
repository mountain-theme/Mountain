local mountain = require("mountain.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups
  local syntax = {
    Type =           { fg = mountain.mountain9_gui }, -- int, long, char, etc.
    StorageClass =   { fg = mountain.mountain9_gui }, -- static, register, volatile, etc.
    Structure =      { fg = mountain.mountain9_gui }, -- struct, union, enum, etc.
    Constant =       { fg = mountain.mountain4_gui }, -- any constant
    String =         { fg = mountain.mountain14_gui, bg = mountain.none, style= 'italic' }, -- Any string
    Character =      { fg = mountain.mountain14_gui }, -- any character constant: 'c', '\n'
    Number =         { fg = mountain.mountain15_gui }, -- a number constant: 5
    Boolean =        { fg = mountain.mountain9_gui }, -- a boolean constant: TRUE, false
    Float =          { fg = mountain.mountain15_gui }, -- a floating point constant: 2.3e10
    Statement =      { fg = mountain.mountain9_gui }, -- any statement
    Label =          { fg = mountain.mountain9_gui }, -- case, default, etc.
    Operator =       { fg = mountain.mountain9_gui }, -- sizeof", "+", "*", etc.
    Exception =      { fg = mountain.mountain9_gui }, -- try, catch, throw
    PreProc =        { fg = mountain.mountain9_gui }, -- generic Preprocessor
    Include =        { fg = mountain.mountain9_gui }, -- preprocessor #include
    Define =         { fg = mountain.mountain9_gui }, -- preprocessor #define
    Macro =          { fg = mountain.mountain9_gui }, -- same as Define
    Typedef =        { fg = mountain.mountain9_gui }, -- A typedef
    PreCondit =      { fg = mountain.mountain13_gui }, -- preprocessor #if, #else, #endif, etc.
    Special =        { fg = mountain.mountain4_gui }, -- any special symbol
    SpecialChar =    { fg = mountain.mountain13_gui }, -- special character in a constant
    Tag =            { fg = mountain.mountain4_gui }, -- you can use CTRL-] on this
    Delimiter =      { fg = mountain.mountain6_gui }, -- character that needs attention like , or .
    SpecialComment = { fg = mountain.mountain8_gui }, -- special things inside a comment
    Debug =          { fg = mountain.mountain11_gui }, -- debugging statements
    Underlined =     { fg = mountain.link, bg = mountain.none, style = 'underline' }, -- text that stands out, HTML links
    Ignore =         { fg = mountain.disabled }, -- left blank, hidden
    Error =          { fg = mountain.error, bg = mountain.none, style = 'bold,underline' }, -- any erroneous construct
    Todo =           { fg = mountain.mountain13_gui, bg = mountain.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Conceal =        { fg = mountain.none, bg = mountain.bg },


    htmlLink = { fg = mountain.link, style = "underline" },
    htmlH1 =   { fg = mountain.mountain8_gui, style = "bold" },
    htmlH2 =   { fg = mountain.mountain11_gui, style = "bold" },
    htmlH3 =   { fg = mountain.mountain14_gui, style = "bold" },
    htmlH4 =   { fg = mountain.mountain15_gui, style = "bold" },
    htmlH5 =   { fg = mountain.mountain9_gui, style = "bold" },
    markdownH1 = { fg = mountain.mountain8_gui, style = "bold" },
    markdownH2 = { fg = mountain.mountain11_gui, style = "bold" },
    markdownH3 = { fg = mountain.mountain14_gui, style = "bold" },
    markdownH1Delimiter = { fg = mountain.mountain8_gui },
    markdownH2Delimiter = { fg = mountain.mountain11_gui },
    markdownH3Delimiter = { fg = mountain.mountain14_gui },
  }

  syntax.Comment =    {fg = mountain.mountain3_gui}
  syntax.Conditional =  {fg = mountain.mountain9_gui} -- normal if, then, else, endif, switch, etc.
  syntax.Keyword =    {fg = mountain.mountain9_gui} -- normal for, do, while, etc.
  syntax.Repeat =      {fg = mountain.mountain9_gui} -- normal any other keyword
  syntax.Function =    {fg = mountain.mountain8_gui}
  syntax.Identifier =      {fg = mountain.mountain9_gui}; -- any variable name

  return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

  local editor = {
    NormalFloat =      { fg = mountain.fg, bg = mountain.float }, -- normal text and background color
    ColorColumn =      { fg = mountain.none, bg = mountain.mountain1_gui }, --  used for the columns set with 'colorcolumn'
    Conceal =          { fg = mountain.disabled }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor =           { fg = mountain.mountain4_gui, bg = mountain.none, style = 'reverse' }, -- the character under the cursor
    CursorIM =         { fg = mountain.cursor, bg = mountain.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
    Directory =        { fg = mountain.mountain7_gui, bg = mountain.none }, -- directory names (and other special names in listings)
    DiffAdd =          { fg = mountain.mountain14_gui, bg = mountain.none, style = 'reverse' }, -- diff mode: Added line
    DiffChange =       { fg = mountain.mountain12_gui, bg = mountain.none, style = 'reverse' }, --  diff mode: Changed line
    DiffDelete =       { fg = mountain.mountain11_gui, bg = mountain.none, style = 'reverse' }, -- diff mode: Deleted line
    DiffText =         { fg = mountain.mountain15_gui, bg = mountain.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
    EndOfBuffer =      { fg = mountain.disabled },
    ErrorMsg =         { fg = mountain.none },
    Folded =           { fg = mountain.disabled, mountain.none, style = 'italic' },
    FoldColumn =       { fg = mountain.mountain7_gui },
    IncSearch =        { fg = mountain.none, bg = mountain.mountain4_gui, style = 'reverse' },
    LineNr =           { fg = mountain.line_numbers },
    CursorLineNr =     { fg = mountain.accent },
    MatchParen =       { fg = mountain.mountain15_gui, bg = mountain.none, style = 'bold' },
    ModeMsg =          { fg = mountain.accent },
    MoreMsg =          { fg = mountain.accent },
    NonText =          { fg = mountain.disabled },
    Pmenu =            { fg = mountain.text, bg = mountain.contrast },
    PmenuSel =         { fg = mountain.accent, bg = mountain.active },
    PmenuSbar =        { fg = mountain.text, bg = mountain.contrast },
    PmenuThumb =       { fg = mountain.fg, bg = mountain.accent },
    Question =         { fg = mountain.mountain14_gui },
    QuickFixLine =     { fg = mountain.highlight, mountain.mountain6_gui, style = 'reverse' },
    qfLineNr =         { fg = mountain.highlight, mountain.mountain6_gui, style = 'reverse' },
    Search =           { fg = mountain.mountain1_gui, bg = mountain.mountain6_gui, style = 'reverse' },
    SpecialKey =       { fg = mountain.mountain9_gui },
    SpellBad =         { fg = mountain.mountain11_gui, bg = mountain.none, style = 'italic,undercurl' },
    SpellCap =         { fg = mountain.mountain7_gui, bg = mountain.none, style = 'italic,undercurl' },
    SpellLocal =       { fg = mountain.mountain8_gui, bg = mountain.none, style = 'italic,undercurl' },
    SpellRare =        { fg = mountain.mountain9_gui, bg = mountain.none, style = 'italic,undercurl' },
    StatusLine =       { fg = mountain.fg, bg = mountain.contrast },
    StatusLineNC =     { fg = mountain.text, bg = mountain.disabled },
    StatusLineTerm =   { fg = mountain.fg, bg = mountain.contrast },
    StatusLineTermNC = { fg = mountain.text, bg = mountain.disabled },
    TabLineFill =      { fg = mountain.fg },
    TablineSel =       { fg = mountain.mountain8_gui, bg = mountain.mountain3_gui },
    Tabline =          { fg = mountain.fg },
    Title =            { fg = mountain.mountain14_gui, bg = mountain.none, style = 'bold' },
    Visual =           { fg = mountain.none, bg = mountain.selection },
    VisualNOS =        { fg = mountain.none, bg = mountain.selection },
    WarningMsg =       { fg = mountain.mountain15_gui },
    WildMenu =         { fg = mountain.mountain12_gui, bg = mountain.none, style = 'bold' },
    CursorColumn =     { fg = mountain.none, bg = mountain.active },
    CursorLine =       { fg = mountain.none, bg = mountain.cursorlinefg },
    ToolbarLine =      { fg = mountain.fg, bg = mountain.bg_alt },
    ToolbarButton =    { fg = mountain.fg, bg = mountain.none, style = 'bold' },
    NormalMode =       { fg = mountain.accent, bg = mountain.none, style = 'reverse' },
    InsertMode =       { fg = mountain.mountain14_gui, bg = mountain.none, style = 'reverse' },
    ReplacelMode =     { fg = mountain.mountain11_gui, bg = mountain.none, style = 'reverse' },
    VisualMode =       { fg = mountain.mountain9_gui, bg = mountain.none, style = 'reverse' },
    CommandMode =      { fg = mountain.mountain4_gui, bg = mountain.none, style = 'reverse' },
    Warnings =         { fg = mountain.mountain15_gui },

    healthError =   { fg = mountain.error },
    healthSuccess = { fg = mountain.mountain14_gui },
    healthWarning = { fg = mountain.mountain15_gui },

    -- dashboard
    DashboardShortCut = { fg = mountain.mountain7_gui },
    DashboardHeader =   { fg = mountain.mountain9_gui },
    DashboardCenter =   { fg = mountain.mountain8_gui },
    DashboardFooter =   { fg = mountain.mountain14_gui, style = "italic" },

  }

  -- Options:

  --Set transparent background
  if vim.g.mountain_disable_background then
    editor.Normal =     { fg = mountain.fg, bg = mountain.none } -- normal text and background color
    editor.SignColumn = { fg = mountain.fg, bg = mountain.none }
  else
    editor.Normal =     { fg = mountain.fg, bg = mountain.bg } -- normal text and background color
    editor.SignColumn = { fg = mountain.fg, bg = mountain.bg }
  end

  -- Remove window split borders
  if vim.g.mountain_borders then
    editor.VertSplit = { fg = mountain.border }
  else
    editor.VertSplit = { fg = mountain.bg }
  end

  return editor
end

theme.loadTerminal = function ()

  vim.g.terminal_color_0 = mountain.mountain1_gui
  vim.g.terminal_color_1 = mountain.mountain11_gui
  vim.g.terminal_color_2 = mountain.mountain14_gui
  vim.g.terminal_color_3 = mountain.mountain13_gui
  vim.g.terminal_color_4 = mountain.mountain9_gui
  vim.g.terminal_color_5 = mountain.mountain15_gui
  vim.g.terminal_color_6 = mountain.mountain8_gui
  vim.g.terminal_color_7 = mountain.mountain5_gui
  vim.g.terminal_color_8 = mountain.mountain3_gui
  vim.g.terminal_color_9 = mountain.mountain11_gui
  vim.g.terminal_color_10 = mountain.mountain14_gui
  vim.g.terminal_color_11 = mountain.mountain13_gui
  vim.g.terminal_color_12 = mountain.mountain9_gui
  vim.g.terminal_color_13 = mountain.mountain15_gui
  vim.g.terminal_color_14 = mountain.mountain7_gui
  vim.g.terminal_color_15 = mountain.mountain6_gui

end

theme.loadTreeSitter = function ()
  -- TreeSitter highlight groups

  local treesitter = {
    TSAnnotation =        { fg = mountain.mountain12_gui },    -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
    TSCharacter=          { fg = mountain.mountain14_gui },    -- For characters.
    TSConstructor =       { fg = mountain.mountain9_gui }, -- For constructor calls and definitions: `=                                                                          { }` in Lua, and Java constructors.
    TSConstant =          { fg = mountain.mountain13_gui },    -- For constants
    TSFloat =             { fg = mountain.mountain15_gui },    -- For floats
    TSNumber =            { fg = mountain.mountain15_gui },    -- For all number
    TSString =            { fg = mountain.mountain14_gui },    -- For strings.

    TSAttribute =         { fg = mountain.mountain15_gui },    -- (unstable) TODO: docs
    TSBoolean=            { fg = mountain.mountain9_gui },    -- For booleans.
    TSConstBuiltin =      { fg = mountain.mountain7_gui },    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro =        { fg = mountain.mountain7_gui },    -- For constants that are defined by macros: `NULL` in C.
    TSError =             { fg = mountain.error },    -- For syntax/parser errors.
    TSException =         { fg = mountain.mountain15_gui },    -- For exception related keywords.
    TSField =             { fg = mountain.mountain4_gui }, -- For fields.
    TSFuncMacro =         { fg = mountain.mountain7_gui },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude =           { fg = mountain.mountain9_gui },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSLabel =             { fg = mountain.mountain15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
    TSNamespace =         { fg = mountain.mountain4_gui},    -- For identifiers referring to modules and namespaces.
    TSOperator =          { fg = mountain.mountain9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter =         { fg = mountain.mountain10_gui }, -- For parameters of a function.
    TSParameterReference= { fg = mountain.mountain10_gui },    -- For references to parameters of a function.
    TSProperty =          { fg = mountain.mountain10_gui }, -- Same as `TSField`.
    TSPunctDelimiter =    { fg = mountain.mountain8_gui }, -- For delimiters ie: `.`
    TSPunctBracket =      { fg = mountain.mountain8_gui }, -- For brackets and parens.
    TSPunctSpecial =      { fg = mountain.mountain8_gui }, -- For special punctutation that does not fall in the catagories before.
    TSStringRegex =       { fg = mountain.mountain7_gui }, -- For regexes.
    TSStringEscape =      { fg = mountain.disabled }, -- For escape characters within a string.
    TSSymbol =            { fg = mountain.mountain15_gui },    -- For identifiers referring to symbols or atoms.
    TSType =              { fg = mountain.mountain9_gui},    -- For types.
    TSTypeBuiltin =       { fg = mountain.mountain9_gui},    -- For builtin types.
    TSTag =               { fg = mountain.mountain4_gui },    -- Tags like html tag names.
    TSTagDelimiter =      { fg = mountain.mountain15_gui },    -- Tag delimiter like `<` `>` `/`
    TSText =              { fg = mountain.text },    -- For strings considemountain11_gui text in a markup language.
    TSTextReference =     { fg = mountain.mountain15_gui }, -- FIXME
    TSEmphasis =          { fg = mountain.mountain10_gui },    -- For text to be represented with emphasis.
    TSUnderline =         { fg = mountain.fg, bg = mountain.none, style = 'underline' },    -- For text to be represented with an underline.
    TSStrike =            { },    -- For strikethrough text.
    TSTitle =             { fg = mountain.mountain10_gui, bg = mountain.none, style = 'bold' },    -- Text that is part of a title.
    TSLiteral =           { fg = mountain.fg },    -- Literal text.
    TSURI =               { fg = mountain.link },    -- Any URI like a link or email.        TSAnnotation =                                                                  { fg = mountain.mountain11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.

  }

  treesitter.TSComment=          { fg = mountain.mountain3_gui }
  treesitter.TSConditional =     { fg = mountain.mountain9_gui }   -- For keywords related to conditionnals.
  treesitter.TSKeyword =         { fg = mountain.mountain9_gui } -- For keywords that don't fall in previous categories.
  treesitter.TSRepeat =          { fg = mountain.mountain9_gui }    -- For keywords related to loops.
  treesitter.TSKeywordFunction = { fg = mountain.mountain8_gui }
  treesitter.TSFunction =        { fg = mountain.mountain8_gui }    -- For fuction (calls and definitions).
  treesitter.TSMethod =          { fg = mountain.mountain7_gui }    -- For method calls and definitions.
  treesitter.TSFuncBuiltin =     { fg = mountain.mountain8_gui }
  treesitter.TSVariable =        { fg = mountain.accent }-- Any variable name that does not have another highlight.
  treesitter.TSVariableBuiltin = { fg = mountain.accent }

  return treesitter

end

theme.loadLSP = function ()
  -- Lsp highlight groups

  local lsp = {
    LspDiagnosticsDefaultError =           { fg = mountain.error }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsSignError =              { fg = mountain.error }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsFloatingError =          { fg = mountain.error }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextError =       { fg = mountain.error }, -- Virtual text "Error"
    LspDiagnosticsUnderlineError =         { style = 'undercurl', sp = mountain.error }, -- used to underline "Error" diagnostics.
    LspDiagnosticsDefaultWarning =         { fg = mountain.mountain15_gui}, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning =            { fg = mountain.mountain15_gui}, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsFloatingWarning =        { fg = mountain.mountain15_gui}, -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextWarning =     { fg = mountain.mountain15_gui}, -- Virtual text "Warning"
    LspDiagnosticsUnderlineWarning =       { style = 'undercurl', sp = mountain.mountain15_gui }, -- used to underline "Warning" diagnostics.
    LspDiagnosticsDefaultInformation =     { fg = mountain.mountain10_gui }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsSignInformation =        { fg = mountain.mountain10_gui },  -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsFloatingInformation =    { fg = mountain.mountain10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextInformation = { fg = mountain.mountain10_gui }, -- Virtual text "Information"
    LspDiagnosticsUnderlineInformation =   { style = 'undercurl', sp = mountain.mountain10_gui }, -- used to underline "Information" diagnostics.
    LspDiagnosticsDefaultHint =            { fg = mountain.mountain9_gui  },  -- used for "Hint" diagnostic virtual text
    LspDiagnosticsSignHint =               { fg = mountain.mountain9_gui  }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsFloatingHint =           { fg = mountain.mountain9_gui  }, -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextHint =        { fg = mountain.mountain9_gui  }, -- Virtual text "Hint"
    LspDiagnosticsUnderlineHint =          { style = 'undercurl', sp = mountain.mountain10_gui }, -- used to underline "Hint" diagnostics.
    LspReferenceText =                     { fg = mountain.accent, bg = mountain.highlight }, -- used for highlighting "text" references
    LspReferenceRead =                     { fg = mountain.accent, bg = mountain.highlight }, -- used for highlighting "read" references
    LspReferenceWrite =                    { fg = mountain.accent, bg = mountain.highlight }, -- used for highlighting "write" references
  }

  return lsp

end

theme.loadPlugins = function()
  -- Plugins highlight groups

  local plugins = {

    -- LspTrouble
    LspTroubleText =   { fg = mountain.text },
    LspTroubleCount =  { fg = mountain.mountain9_gui, bg = mountain.active },
    LspTroubleNormal = { fg = mountain.fg, bg = mountain.sidebar },

    -- Diff
    diffAdded =     { fg = mountain.mountain14_gui },
    diffRemoved =   { fg = mountain.mountain11_gui },
    diffChanged =   { fg = mountain.mountain15_gui },
    diffOldFile =   { fg = mountain.yelow },
    diffNewFile =   { fg = mountain.mountain12_gui },
    diffFile =      { fg = mountain.mountain7_gui },
    diffLine =      { fg = mountain.comments },
    diffIndexLine = { fg = mountain.mountain9_gui },

    -- Neogit
    NeogitBranch =               { fg = mountain.mountain10_gui },
    NeogitRemote =               { fg = mountain.mountain9_gui },
    NeogitHunkHeader =           { fg = mountain.fg, bg = mountain.highlight },
    NeogitHunkHeaderHighlight =  { fg = mountain.mountain7_gui, bg = mountain.contrast },
    NeogitDiffContextHighlight = { fg = mountain.bg_alt, bg = mountain.contrast },
    NeogitDiffDeleteHighlight =  { fg = mountain.mountain11_gui },
    NeogitDiffAddHighlight =     { fg = mountain.mountain14_gui },

    -- GitGutter
    GitGutterAdd =    { fg = mountain.mountain14_gui }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = mountain.mountain15_gui }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = mountain.mountain11_gui }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd =      { fg = mountain.mountain14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr =    { fg = mountain.mountain14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn =    { fg = mountain.mountain14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsChange =   { fg = mountain.mountain15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr = { fg = mountain.mountain15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = { fg = mountain.mountain15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete =   { fg = mountain.mountain11_gui }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr = { fg = mountain.mountain11_gui }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = { fg = mountain.mountain11_gui }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopePromptBorder =   { fg = mountain.mountain8_gui },
    TelescopeResultsBorder =  { fg = mountain.mountain9_gui },
    TelescopePreviewBorder =  { fg = mountain.mountain14_gui },
    TelescopeSelectionCaret = { fg = mountain.mountain9_gui },
    TelescopeSelection =      { fg = mountain.mountain9_gui },
    TelescopeMatching =       { fg = mountain.mountain8_gui },
    TelescopeNormal =         { fg = mountain.fg, bg = mountain.float },

    -- NvimTree
    NvimTreeRootFolder =        { fg = mountain.mountain7_gui, style = "bold" },
    NvimTreeGitDirty =          { fg = mountain.mountain15_gui },
    NvimTreeGitNew =            { fg = mountain.mountain14_gui },
    NvimTreeImageFile =         { fg = mountain.mountain15_gui },
    NvimTreeExecFile =          { fg = mountain.mountain14_gui },
    NvimTreeSpecialFile =       { fg = mountain.mountain9_gui , style = "underline" },
    NvimTreeFolderName=         { fg = mountain.mountain10_gui },
    NvimTreeEmptyFolderName=    { fg = mountain.disabled },
    NvimTreeFolderIcon=         { fg = mountain.accent },
    NvimTreeIndentMarker =      { fg  = mountain.disabled },
    LspDiagnosticsError =       { fg = mountain.error },
    LspDiagnosticsWarning =     { fg = mountain.mountain15_gui },
    LspDiagnosticsInformation = { fg = mountain.mountain10_gui },
    LspDiagnosticsHint =        { fg = mountain.mountain9_gui },

    -- WhichKey
    WhichKey =          { fg = mountain.accent , style = 'bold'},
    WhichKeyGroup =     { fg = mountain.text },
    WhichKeyDesc =      { fg = mountain.mountain7_gui, style = 'italic' },
    WhichKeySeperator = { fg = mountain.fg },
    WhichKeyFloating =  { bg = mountain.float },
    WhichKeyFloat =     { bg = mountain.float },

    -- LspSaga
    DiagnosticError =            { fg = mountain.error },
    DiagnosticWarning =          { fg = mountain.mountain15_gui },
    DiagnosticInformation =      { fg = mountain.mountain10_gui },
    DiagnosticHint =             { fg = mountain.mountain9_gui },
    DiagnosticTruncateLine =     { fg = mountain.fg },
    LspFloatWinNormal =          { bg = mountain.contrast },
    LspFloatWinBorder =          { fg = mountain.mountain9_gui },
    LspSagaBorderTitle =         { fg = mountain.mountain8_gui },
    LspSagaHoverBorder =         { fg = mountain.mountain10_gui },
    LspSagaRenameBorder =        { fg = mountain.mountain14_gui },
    LspSagaDefPreviewBorder =    { fg = mountain.mountain14_gui },
    LspSagaCodeActionBorder =    { fg = mountain.mountain7_gui },
    LspSagaFinderSelection =     { fg = mountain.mountain14_gui },
    LspSagaCodeActionTitle =     { fg = mountain.mountain10_gui },
    LspSagaCodeActionContent =   { fg = mountain.mountain9_gui },
    LspSagaSignatureHelpBorder = { fg = mountain.mountain13_gui },
    ReferencesCount =            { fg = mountain.mountain9_gui },
    DefinitionCount =            { fg = mountain.mountain9_gui },
    DefinitionIcon =             { fg = mountain.mountain7_gui },
    ReferencesIcon =             { fg = mountain.mountain7_gui },
    TargetWord =                 { fg = mountain.mountain8_gui },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = mountain.bg },
    BufferLineFill =              { bg = mountain.bg },

    -- Sneak
    Sneak =      { fg = mountain.bg, bg = mountain.accent },
    SneakScope = { bg = mountain.selection },

    -- Indent Blankline
    IndentBlanklineChar =        { fg = mountain.mountain3_gui },
    IndentBlanklineContextChar = { fg = mountain.mountain3_gui },

    -- Illuminate
    illuminatedWord =    { bg = mountain.cursorlinefg },
    illuminatedCurWord = { bg = mountain.cursorlinefg },

    -- nvim-dap
    DapBreakpoint = { fg = mountain.mountain14_gui},
    DapStopped =    { fg = mountain.mountain15_gui},

    -- Hop
    HopNextKey =   { fg = mountain.accent, style = 'bold' },
    HopNextKey1 =  { fg = mountain.mountain8_gui, style = 'bold' },
    HopNextKey2 =  { fg = mountain.mountain3_gui},
    HopUnmatched = { fg = mountain.comments },

    -- Fern
    FernBranchText = { fg = mountain.mountain3_gui},
  }
  -- Options:

  -- Disable nvim-tree background
  if vim.g.mountain_disable_background then
    plugins.NvimTreeNormal = { fg = mountain.fg, bg = mountain.none }
  else
    plugins.NvimTreeNormal = { fg = mountain.fg, bg = mountain.sidebar }
  end

  if vim.g.mountain_enable_sidebar_background then
    plugins.NvimTreeNormal = { fg = mountain.fg, bg = mountain.sidebar }
  else
    plugins.NvimTreeNormal = { fg = mountain.fg, bg = mountain.none }
  end

  return plugins

end

return theme
