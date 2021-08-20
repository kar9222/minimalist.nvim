local minimalist = require("minimalist.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups
  local syntax = {
    Type =           { fg = minimalist.nord9_gui }, -- int, long, char, etc.
    StorageClass =   { fg = minimalist.nord9_gui }, -- static, register, volatile, etc.
    Structure =      { fg = minimalist.nord9_gui }, -- struct, union, enum, etc.
    Constant =       { fg = minimalist.nord4_gui }, -- any constant
    Character =      { fg = minimalist.nord14_gui }, -- any character constant: 'c', '\n'
    Number =         { fg = minimalist.nord15_gui }, -- a number constant: 5
    Boolean =        { fg = minimalist.nord9_gui }, -- a boolean constant: TRUE, false
    Float =          { fg = minimalist.nord15_gui }, -- a floating point constant: 2.3e10
    Statement =      { fg = minimalist.nord9_gui }, -- any statement
    Label =          { fg = minimalist.nord9_gui }, -- case, default, etc.
    Operator =       { fg = minimalist.nord9_gui }, -- sizeof", "+", "*", etc.
    Exception =      { fg = minimalist.nord9_gui }, -- try, catch, throw
    PreProc =        { fg = minimalist.nord9_gui }, -- generic Preprocessor
    Include =        { fg = minimalist.nord9_gui }, -- preprocessor #include
    Define =         { fg = minimalist.nord9_gui }, -- preprocessor #define
    Macro =          { fg = minimalist.nord9_gui }, -- same as Define
    Typedef =        { fg = minimalist.nord9_gui }, -- A typedef
    PreCondit =      { fg = minimalist.nord13_gui }, -- preprocessor #if, #else, #endif, etc.
    Special =        { fg = minimalist.nord4_gui }, -- any special symbol
    SpecialChar =    { fg = minimalist.nord13_gui }, -- special character in a constant
    Tag =            { fg = minimalist.nord4_gui }, -- you can use CTRL-] on this
    Delimiter =      { fg = minimalist.nord6_gui }, -- character that needs attention like , or .
    SpecialComment = { fg = minimalist.nord8_gui }, -- special things inside a comment
    Debug =          { fg = minimalist.nord11_gui }, -- debugging statements
    Underlined =     { fg = minimalist.nord14_gui, bg = minimalist.none, style = 'underline' }, -- text that stands out, HTML links
    Ignore =         { fg = minimalist.nord1_gui }, -- left blank, hidden
    Error =          { fg = minimalist.nord11_gui, bg = minimalist.none, style = 'bold,underline' }, -- any erroneous construct
    Todo =           { fg = minimalist.nord13_gui, bg = minimalist.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX
    Conceal =        { fg = minimalist.none, bg = minimalist.nord0_gui },


    htmlLink = { fg = minimalist.nord14_gui, style = "underline" },
    htmlH1 =   { fg = minimalist.nord8_gui, style = "bold" },
    htmlH2 =   { fg = minimalist.nord11_gui, style = "bold" },
    htmlH3 =   { fg = minimalist.nord14_gui, style = "bold" },
    htmlH4 =   { fg = minimalist.nord15_gui, style = "bold" },
    htmlH5 =   { fg = minimalist.nord9_gui, style = "bold" },
    markdownH1 = { fg = minimalist.nord8_gui, style = "bold" },
    markdownH2 = { fg = minimalist.nord11_gui, style = "bold" },
    markdownH3 = { fg = minimalist.nord14_gui, style = "bold" },
    markdownH1Delimiter = { fg = minimalist.nord8_gui },
    markdownH2Delimiter = { fg = minimalist.nord11_gui },
    markdownH3Delimiter = { fg = minimalist.nord14_gui },
  }

  	-- Italic comments
	if vim.g.minimalist_italic == true then
		syntax.Conditional =		{ fg = minimalist.nord9_gui, bg = minimalist.none, style = 'italic' } -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = minimalist.nord9_gui, bg = minimalist.none, style = 'italic' } -- italic for, do, while, etc.
		syntax.Repeat =				{ fg = minimalist.nord9_gui, bg = minimalist.none, style = 'italic' } -- italic any other keyword
		syntax.Comment =		{ fg = minimalist.nord3_gui_bright, bg = minimalist.none, style = 'italic' } -- italic comments
		syntax.Function =		{ fg = minimalist.nord8_gui, bg = minimalist.none, style = 'italic' } -- italic funtion names
		syntax.Identifier =		{ fg = minimalist.nord9_gui, bg = minimalist.none, style = 'italic' }; -- any variable name
    syntax.String = { fg = minimalist.nord14_gui, bg = minimalist.none, style= 'italic' } -- any string
	else
		syntax.Comment =		{fg = minimalist.nord3_gui_bright} -- normal comments
		syntax.Conditional =		{ fg = minimalist.nord9_gui } -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = minimalist.nord9_gui } -- normal for, do, while, etc.
		syntax.Repeat =				{ fg = minimalist.nord9_gui } -- normal any other keyword
		syntax.Function =		{ fg = minimalist.nord8_gui} -- normal function names
		syntax.Identifier =		{ fg = minimalist.nord9_gui}; -- any variable name
    syntax.String = { fg = minimalist.nord14_gui } -- any string
	end

  return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

  local editor = {
    NormalFloat =      { fg = minimalist.nord4_gui, bg = minimalist.float }, -- normal text and background color
    ColorColumn =      { fg = minimalist.none, bg = minimalist.nord1_gui }, --  used for the columns set with 'colorcolumn'
    Conceal =          { fg = minimalist.nord1_gui }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor =           { fg = minimalist.nord4_gui, bg = minimalist.none, style = 'reverse' }, -- the character under the cursor
    CursorIM =         { fg = minimalist.nord5_gui, bg = minimalist.none, style = 'reverse' }, -- like Cursor, but used when in IME mode
    Directory =        { fg = minimalist.nord7_gui, bg = minimalist.none }, -- directory names (and other special names in listings)
    DiffAdd =          { fg = minimalist.nord14_gui, bg = minimalist.none, style = 'reverse' }, -- diff mode: Added line
    DiffChange =       { fg = minimalist.nord12_gui, bg = minimalist.none, style = 'reverse' }, --  diff mode: Changed line
    DiffDelete =       { fg = minimalist.nord11_gui, bg = minimalist.none, style = 'reverse' }, -- diff mode: Deleted line
    DiffText =         { fg = minimalist.nord15_gui, bg = minimalist.none, style = 'reverse' }, -- diff mode: Changed text within a changed line
    EndOfBuffer =      { fg = minimalist.nord1_gui },
    ErrorMsg =         { fg = minimalist.none },
    Folded =           { fg = minimalist.nord1_gui, minimalist.none, style = 'italic' },
    FoldColumn =       { fg = minimalist.nord7_gui },
    IncSearch =        { fg = minimalist.nord6_gui, bg = minimalist.nord10_gui },
    LineNr =           { fg = minimalist.nord3_gui_bright },
    CursorLineNr =     { fg = minimalist.nord4_gui },
    MatchParen =       { fg = minimalist.nord15_gui, bg = minimalist.none, style = 'bold' },
    ModeMsg =          { fg = minimalist.nord4_gui },
    MoreMsg =          { fg = minimalist.nord4_gui },
    NonText =          { fg = minimalist.nord1_gui },
    Pmenu =            { fg = minimalist.nord4_gui, bg = minimalist.nord2_gui },
    PmenuSel =         { fg = minimalist.nord4_gui, bg = minimalist.nord10_gui },
    PmenuSbar =        { fg = minimalist.nord4_gui, bg = minimalist.nord2_gui },
    PmenuThumb =       { fg = minimalist.nord4_gui, bg = minimalist.nord4_gui },
    Question =         { fg = minimalist.nord14_gui },
    QuickFixLine =     { fg = minimalist.nord4_gui, minimalist.nord6_gui, style = 'reverse' },
    qfLineNr =         { fg = minimalist.nord4_gui, minimalist.nord6_gui, style = 'reverse' },
    Search =           { fg = minimalist.nord1_gui, bg = minimalist.nord6_gui, style = 'reverse' },
    SpecialKey =       { fg = minimalist.nord9_gui },
    SpellBad =         { fg = minimalist.nord11_gui, bg = minimalist.none, style = 'italic,undercurl' },
    SpellCap =         { fg = minimalist.nord7_gui, bg = minimalist.none, style = 'italic,undercurl' },
    SpellLocal =       { fg = minimalist.nord8_gui, bg = minimalist.none, style = 'italic,undercurl' },
    SpellRare =        { fg = minimalist.nord9_gui, bg = minimalist.none, style = 'italic,undercurl' },
    StatusLine =       { fg = minimalist.nord4_gui, bg = minimalist.nord2_gui },
    StatusLineNC =     { fg = minimalist.nord4_gui, bg = minimalist.nord1_gui },
    StatusLineTerm =   { fg = minimalist.nord4_gui, bg = minimalist.nord2_gui },
    StatusLineTermNC = { fg = minimalist.nord4_gui, bg = minimalist.nord1_gui },
    TabLineFill =      { fg = minimalist.nord4_gui },
    TablineSel =       { fg = minimalist.nord8_gui, bg = minimalist.nord3_gui },
    Tabline =          { fg = minimalist.nord4_gui },
    Title =            { fg = minimalist.nord14_gui, bg = minimalist.none, style = 'bold' },
    Visual =           { fg = minimalist.none, bg = minimalist.nord1_gui },
    VisualNOS =        { fg = minimalist.none, bg = minimalist.nord1_gui },
    WarningMsg =       { fg = minimalist.nord15_gui },
    WildMenu =         { fg = minimalist.nord12_gui, bg = minimalist.none, style = 'bold' },
    CursorColumn =     { fg = minimalist.none, bg = minimalist.cursorlinefg },
    CursorLine =       { fg = minimalist.none, bg = minimalist.cursorlinefg },
    ToolbarLine =      { fg = minimalist.nord4_gui, bg = minimalist.nord1_gui },
    ToolbarButton =    { fg = minimalist.nord4_gui, bg = minimalist.none, style = 'bold' },
    NormalMode =       { fg = minimalist.nord4_gui, bg = minimalist.none, style = 'reverse' },
    InsertMode =       { fg = minimalist.nord14_gui, bg = minimalist.none, style = 'reverse' },
    ReplacelMode =     { fg = minimalist.nord11_gui, bg = minimalist.none, style = 'reverse' },
    VisualMode =       { fg = minimalist.nord9_gui, bg = minimalist.none, style = 'reverse' },
    CommandMode =      { fg = minimalist.nord4_gui, bg = minimalist.none, style = 'reverse' },
    Warnings =         { fg = minimalist.nord15_gui },

    healthError =   { fg = minimalist.nord11_gui },
    healthSuccess = { fg = minimalist.nord14_gui },
    healthWarning = { fg = minimalist.nord15_gui },

    -- dashboard
    DashboardShortCut = { fg = minimalist.nord7_gui },
    DashboardHeader =   { fg = minimalist.nord9_gui },
    DashboardCenter =   { fg = minimalist.nord8_gui },
    DashboardFooter =   { fg = minimalist.nord14_gui, style = "italic" },

    -- BufferLine
    BufferLineIndicatorSelected = { fg = minimalist.nord0_gui },
    BufferLineFill =              { bg = minimalist.nord0_gui },
  }

  -- Options:

  --Set transparent background
  if vim.g.minimalist_disable_background then
    editor.Normal =     { fg = minimalist.nord4_gui, bg = minimalist.none } -- normal text and background color
    editor.SignColumn = { fg = minimalist.nord4_gui, bg = minimalist.none }
  else
    editor.Normal =     { fg = minimalist.nord4_gui, bg = minimalist.nord0_gui } -- normal text and background color
    editor.SignColumn = { fg = minimalist.nord4_gui, bg = minimalist.nord0_gui }
  end

  -- Remove window split borders
  if vim.g.minimalist_borders then
    editor.VertSplit = { fg = minimalist.nord2_gui }
  else
    editor.VertSplit = { fg = minimalist.nord0_gui }
  end

  return editor
end

theme.loadTerminal = function ()

  vim.g.terminal_color_0 = minimalist.nord1_gui
  vim.g.terminal_color_1 = minimalist.nord11_gui
  vim.g.terminal_color_2 = minimalist.nord14_gui
  vim.g.terminal_color_3 = minimalist.nord13_gui
  vim.g.terminal_color_4 = minimalist.nord9_gui
  vim.g.terminal_color_5 = minimalist.nord15_gui
  vim.g.terminal_color_6 = minimalist.nord8_gui
  vim.g.terminal_color_7 = minimalist.nord5_gui
  vim.g.terminal_color_8 = minimalist.nord3_gui
  vim.g.terminal_color_9 = minimalist.nord11_gui
  vim.g.terminal_color_10 = minimalist.nord14_gui
  vim.g.terminal_color_11 = minimalist.nord13_gui
  vim.g.terminal_color_12 = minimalist.nord9_gui
  vim.g.terminal_color_13 = minimalist.nord15_gui
  vim.g.terminal_color_14 = minimalist.nord7_gui
  vim.g.terminal_color_15 = minimalist.nord6_gui

end

theme.loadTreeSitter = function ()
  -- TreeSitter highlight groups

  local treesitter = {
    TSAnnotation =        { fg = minimalist.nord12_gui },    -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
    TSCharacter=          { fg = minimalist.nord14_gui },    -- For characters.
    TSConstructor =       { fg = minimalist.nord9_gui }, -- For constructor calls and definitions: `=                                                                          { }` in Lua, and Java constructors.
    TSConstant =          { fg = minimalist.nord13_gui },    -- For constants
    TSFloat =             { fg = minimalist.nord15_gui },    -- For floats
    TSNumber =            { fg = minimalist.nord15_gui },    -- For all number
    TSString =            { fg = minimalist.nord14_gui },    -- For strings.

    TSAttribute =         { fg = minimalist.nord15_gui },    -- (unstable) TODO: docs
    TSBoolean=            { fg = minimalist.nord9_gui },    -- For booleans.
    TSConstBuiltin =      { fg = minimalist.nord7_gui },    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro =        { fg = minimalist.nord7_gui },    -- For constants that are defined by macros: `NULL` in C.
    TSError =             { fg = minimalist.nord11_gui },    -- For syntax/parser errors.
    TSException =         { fg = minimalist.nord15_gui },    -- For exception related keywords.
    TSField =             { fg = minimalist.nord4_gui }, -- For fields.
    TSFuncMacro =         { fg = minimalist.nord7_gui },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude =           { fg = minimalist.nord9_gui },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSLabel =             { fg = minimalist.nord15_gui }, -- For labels: `label:` in C and `:label:` in Lua.
    TSNamespace =         { fg = minimalist.nord4_gui},    -- For identifiers referring to modules and namespaces.
    TSOperator =          { fg = minimalist.nord9_gui }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter =         { fg = minimalist.nord10_gui }, -- For parameters of a function.
    TSParameterReference= { fg = minimalist.nord10_gui },    -- For references to parameters of a function.
    TSProperty =          { fg = minimalist.nord10_gui }, -- Same as `TSField`.
    TSPunctDelimiter =    { fg = minimalist.nord8_gui }, -- For delimiters ie: `.`
    TSPunctBracket =      { fg = minimalist.nord8_gui }, -- For brackets and parens.
    TSPunctSpecial =      { fg = minimalist.nord8_gui }, -- For special punctutation that does not fall in the catagories before.
    TSStringRegex =       { fg = minimalist.nord7_gui }, -- For regexes.
    TSStringEscape =      { fg = minimalist.nord1_gui }, -- For escape characters within a string.
    TSSymbol =            { fg = minimalist.nord15_gui },    -- For identifiers referring to symbols or atoms.
    TSType =              { fg = minimalist.nord9_gui},    -- For types.
    TSTypeBuiltin =       { fg = minimalist.nord9_gui},    -- For builtin types.
    TSTag =               { fg = minimalist.nord4_gui },    -- Tags like html tag names.
    TSTagDelimiter =      { fg = minimalist.nord15_gui },    -- Tag delimiter like `<` `>` `/`
    TSText =              { fg = minimalist.nord4_gui },    -- For strings considenord11_gui text in a markup language.
    TSTextReference =     { fg = minimalist.nord15_gui }, -- FIXME
    TSEmphasis =          { fg = minimalist.nord10_gui },    -- For text to be represented with emphasis.
    TSUnderline =         { fg = minimalist.nord4_gui, bg = minimalist.none, style = 'underline' },    -- For text to be represented with an underline.
    TSTitle =             { fg = minimalist.nord10_gui, bg = minimalist.none, style = 'bold' },    -- Text that is part of a title.
    TSLiteral =           { fg = minimalist.nord4_gui },    -- Literal text.
    TSURI =               { fg = minimalist.nord14_gui },    -- Any URI like a link or email.        TSAnnotation =                                                                  { fg = minimalist.nord11_gui },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.

  }

  treesitter.TSComment=          { fg = minimalist.nord3_gui_bright }
  treesitter.TSConditional =     { fg = minimalist.nord9_gui }   -- For keywords related to conditionnals.
  treesitter.TSKeyword =         { fg = minimalist.nord9_gui } -- For keywords that don't fall in previous categories.
  treesitter.TSRepeat =          { fg = minimalist.nord9_gui }    -- For keywords related to loops.
  treesitter.TSKeywordFunction = { fg = minimalist.nord8_gui }
  treesitter.TSFunction =        { fg = minimalist.nord8_gui }    -- For fuction (calls and definitions).
  treesitter.TSMethod =          { fg = minimalist.nord7_gui }    -- For method calls and definitions.
  treesitter.TSFuncBuiltin =     { fg = minimalist.nord8_gui }
  treesitter.TSVariable =        { fg = minimalist.nord4_gui }-- Any variable name that does not have another highlight.
  treesitter.TSVariableBuiltin = { fg = minimalist.nord4_gui }

  return treesitter

end

theme.loadLSP = function ()
  -- Lsp highlight groups

  local lsp = {
    LspDiagnosticsDefaultError =           { fg = minimalist.nord11_gui }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsSignError =              { fg = minimalist.nord11_gui }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsFloatingError =          { fg = minimalist.nord11_gui }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextError =       { fg = minimalist.nord11_gui }, -- Virtual text "Error"
    LspDiagnosticsUnderlineError =         { style = 'undercurl', sp = minimalist.nord11_gui }, -- used to underline "Error" diagnostics.
    LspDiagnosticsDefaultWarning =         { fg = minimalist.nord15_gui}, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning =            { fg = minimalist.nord15_gui}, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsFloatingWarning =        { fg = minimalist.nord15_gui}, -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextWarning =     { fg = minimalist.nord15_gui}, -- Virtual text "Warning"
    LspDiagnosticsUnderlineWarning =       { style = 'undercurl', sp = minimalist.nord15_gui }, -- used to underline "Warning" diagnostics.
    LspDiagnosticsDefaultInformation =     { fg = minimalist.nord10_gui }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsSignInformation =        { fg = minimalist.nord10_gui },  -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsFloatingInformation =    { fg = minimalist.nord10_gui }, -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextInformation = { fg = minimalist.nord10_gui }, -- Virtual text "Information"
    LspDiagnosticsUnderlineInformation =   { style = 'undercurl', sp = minimalist.nord10_gui }, -- used to underline "Information" diagnostics.
    LspDiagnosticsDefaultHint =            { fg = minimalist.nord9_gui  },  -- used for "Hint" diagnostic virtual text
    LspDiagnosticsSignHint =               { fg = minimalist.nord9_gui  }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsFloatingHint =           { fg = minimalist.nord9_gui  }, -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextHint =        { fg = minimalist.nord9_gui  }, -- Virtual text "Hint"
    LspDiagnosticsUnderlineHint =          { style = 'undercurl', sp = minimalist.nord10_gui }, -- used to underline "Hint" diagnostics.
    LspReferenceText =                     { fg = minimalist.nord4_gui, bg = minimalist.nord1_gui }, -- used for highlighting "text" references
    LspReferenceRead =                     { fg = minimalist.nord4_gui, bg = minimalist.nord1_gui }, -- used for highlighting "read" references
    LspReferenceWrite =                    { fg = minimalist.nord4_gui, bg = minimalist.nord1_gui }, -- used for highlighting "write" references
  }

  return lsp

end

theme.loadPlugins = function()
  -- Plugins highlight groups

  local plugins = {

    -- LspTrouble
    LspTroubleText =   { fg = minimalist.nord4_gui },
    LspTroubleCount =  { fg = minimalist.nord9_gui, bg = minimalist.nord10_gui },
    LspTroubleNormal = { fg = minimalist.nord4_gui, bg = minimalist.sidebar },

    -- Diff
    diffAdded =     { fg = minimalist.nord14_gui },
    diffRemoved =   { fg = minimalist.nord11_gui },
    diffChanged =   { fg = minimalist.nord15_gui },
    diffOldFile =   { fg = minimalist.yelow },
    diffNewFile =   { fg = minimalist.nord12_gui },
    diffFile =      { fg = minimalist.nord7_gui },
    diffLine =      { fg = minimalist.nord3_gui },
    diffIndexLine = { fg = minimalist.nord9_gui },

    -- Neogit
    NeogitBranch =               { fg = minimalist.nord10_gui },
    NeogitRemote =               { fg = minimalist.nord9_gui },
    NeogitHunkHeader =           { fg = minimalist.nord8_gui },
    NeogitHunkHeaderHighlight =  { fg = minimalist.nord8_gui, bg = minimalist.nord1_gui },
    NeogitDiffContextHighlight = { bg = minimalist.nord1_gui },
    NeogitDiffDeleteHighlight =  { fg = minimalist.nord11_gui, style='reverse' },
    NeogitDiffAddHighlight =     { fg = minimalist.nord14_gui, style='reverse' },

    -- GitGutter
    GitGutterAdd =    { fg = minimalist.nord14_gui }, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = minimalist.nord15_gui }, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = minimalist.nord11_gui }, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsAdd =      { fg = minimalist.nord14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr =    { fg = minimalist.nord14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn =    { fg = minimalist.nord14_gui }, -- diff mode: Added line |diff.txt|
    GitSignsChange =   { fg = minimalist.nord15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr = { fg = minimalist.nord15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = { fg = minimalist.nord15_gui }, -- diff mode: Changed line |diff.txt|
    GitSignsDelete =   { fg = minimalist.nord11_gui }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr = { fg = minimalist.nord11_gui }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = { fg = minimalist.nord11_gui }, -- diff mode: Deleted line |diff.txt|

    -- Telescope
    TelescopePromptBorder =   { fg = minimalist.nord8_gui },
    TelescopeResultsBorder =  { fg = minimalist.nord9_gui },
    TelescopePreviewBorder =  { fg = minimalist.nord14_gui },
    TelescopeSelectionCaret = { fg = minimalist.nord9_gui },
    TelescopeSelection =      { fg = minimalist.nord9_gui },
    TelescopeMatching =       { fg = minimalist.nord8_gui },
    TelescopeNormal =         { fg = minimalist.nord4_gui, bg = minimalist.float },

    -- NvimTree
    NvimTreeRootFolder =        { fg = minimalist.nord7_gui, style = "bold" },
    NvimTreeGitDirty =          { fg = minimalist.nord15_gui },
    NvimTreeGitNew =            { fg = minimalist.nord14_gui },
    NvimTreeImageFile =         { fg = minimalist.nord15_gui },
    NvimTreeExecFile =          { fg = minimalist.nord14_gui },
    NvimTreeSpecialFile =       { fg = minimalist.nord9_gui , style = "underline" },
    NvimTreeFolderName=         { fg = minimalist.nord10_gui },
    NvimTreeEmptyFolderName=    { fg = minimalist.nord1_gui },
    NvimTreeFolderIcon=         { fg = minimalist.nord4_gui },
    NvimTreeIndentMarker =      { fg  = minimalist.nord1_gui },
    LspDiagnosticsError =       { fg = minimalist.nord11_gui },
    LspDiagnosticsWarning =     { fg = minimalist.nord15_gui },
    LspDiagnosticsInformation = { fg = minimalist.nord10_gui },
    LspDiagnosticsHint =        { fg = minimalist.nord9_gui },

    -- WhichKey
    WhichKey =          { fg = minimalist.nord4_gui , style = 'bold'},
    WhichKeyGroup =     { fg = minimalist.nord4_gui },
    WhichKeyDesc =      { fg = minimalist.nord7_gui, style = 'italic' },
    WhichKeySeperator = { fg = minimalist.nord4_gui },
    WhichKeyFloating =  { bg = minimalist.float },
    WhichKeyFloat =     { bg = minimalist.float },

    -- LspSaga
    DiagnosticError =            { fg = minimalist.nord11_gui },
    DiagnosticWarning =          { fg = minimalist.nord15_gui },
    DiagnosticInformation =      { fg = minimalist.nord10_gui },
    DiagnosticHint =             { fg = minimalist.nord9_gui },
    DiagnosticTruncateLine =     { fg = minimalist.nord4_gui },
    LspFloatWinNormal =          { bg = minimalist.nord2_gui },
    LspFloatWinBorder =          { fg = minimalist.nord9_gui },
    LspSagaBorderTitle =         { fg = minimalist.nord8_gui },
    LspSagaHoverBorder =         { fg = minimalist.nord10_gui },
    LspSagaRenameBorder =        { fg = minimalist.nord14_gui },
    LspSagaDefPreviewBorder =    { fg = minimalist.nord14_gui },
    LspSagaCodeActionBorder =    { fg = minimalist.nord7_gui },
    LspSagaFinderSelection =     { fg = minimalist.nord14_gui },
    LspSagaCodeActionTitle =     { fg = minimalist.nord10_gui },
    LspSagaCodeActionContent =   { fg = minimalist.nord9_gui },
    LspSagaSignatureHelpBorder = { fg = minimalist.nord13_gui },
    ReferencesCount =            { fg = minimalist.nord9_gui },
    DefinitionCount =            { fg = minimalist.nord9_gui },
    DefinitionIcon =             { fg = minimalist.nord7_gui },
    ReferencesIcon =             { fg = minimalist.nord7_gui },
    TargetWord =                 { fg = minimalist.nord8_gui },

        -- Sneak
    Sneak =      { fg = minimalist.nord0_gui, bg = minimalist.nord4_gui },
    SneakScope = { bg = minimalist.nord1_gui },

    -- Indent Blankline
    IndentBlanklineChar =        { fg = minimalist.nord3_gui },
    IndentBlanklineContextChar = { fg = minimalist.nord3_gui },

    -- Illuminate
    illuminatedWord =    { bg = minimalist.nord3_gui },
    illuminatedCurWord = { bg = minimalist.nord3_gui },

    -- nvim-dap
    DapBreakpoint = { fg = minimalist.nord14_gui},
    DapStopped =    { fg = minimalist.nord15_gui},

    -- Hop
    HopNextKey =   { fg = minimalist.nord4_gui, style = 'bold' },
    HopNextKey1 =  { fg = minimalist.nord8_gui, style = 'bold' },
    HopNextKey2 =  { fg = minimalist.nord4_gui},
    HopUnmatched = { fg = minimalist.nord3_gui },

    -- Fern
    FernBranchText = { fg = minimalist.nord3_gui_bright},

    -- nvim-ts-rainbow
    rainbowcol1 = { fg = minimalist.nord15_gui },
    rainbowcol2 = { fg = minimalist.nord14_gui },
    rainbowcol3 = { fg = minimalist.nord13_gui },
    rainbowcol4 = { fg = minimalist.nord12_gui },
    rainbowcol5 = { fg = minimalist.nord11_gui },
    rainbowcol6 = { fg = minimalist.nord10_gui },
    rainbowcol7 = { fg = minimalist.nord9_gui },
  }
  -- Options:

  -- Disable nvim-tree background
  if vim.g.minimalist_disable_background then
    plugins.NvimTreeNormal = { fg = minimalist.nord4_gui, bg = minimalist.none }
  else
    plugins.NvimTreeNormal = { fg = minimalist.nord4_gui, bg = minimalist.sidebar }
  end

  if vim.g.minimalist_enable_sidebar_background then
    plugins.NvimTreeNormal = { fg = minimalist.nord4_gui, bg = minimalist.sidebar }
  else
    plugins.NvimTreeNormal = { fg = minimalist.nord4_gui, bg = minimalist.none }
  end

  return plugins

end

return theme
