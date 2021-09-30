local minimalist = require("minimalist.colors")

local theme = {}

theme.loadSyntax = function ()
    -- Syntax highlight groups
  local syntax = {
    Type =           { fg = minimalist.bright_bg_1_2, stye = 'bold' }, -- int, long, char, etc.
    StorageClass =   { fg = minimalist.bright_bg_1_2 }, -- static, register, volatile, etc.
    Structure =      { fg = minimalist.bright_bg_1_2 }, -- struct, union, enum, etc.
    Constant =       { fg = minimalist.fg }, -- any constant
    Character =      { fg = minimalist.standout_more }, -- any character constant: 'c', '\n'
    Number =         { fg = minimalist.standout_more }, -- a number constant: 5
    Boolean =        { fg = minimalist.standout_more }, -- a boolean constant: TRUE, false
    Float =          { fg = minimalist.standout_more }, -- a floating point constant: 2.3e10
    Statement =      { fg = minimalist.standout_less }, -- any statement
    Label =          { fg = minimalist.bright_bg_1_2 }, -- case, default, etc.
    Operator =       { fg = minimalist.bright_bg_1_2 }, -- sizeof", "+", "*", etc.
    Exception =      { fg = minimalist.bright_bg_1_2 }, -- try, catch, throw
    PreProc =        { fg = minimalist.standout }, -- generic Preprocessor
    Include =        { fg = minimalist.standout_special_1 }, -- preprocessor #include
    Define =         { fg = minimalist.bright_bg_1_2 }, -- preprocessor #define
    Macro =          { fg = minimalist.bright_bg_1_2 }, -- same as Define
    Typedef =        { fg = minimalist.bright_bg_1_2 }, -- A typedef
    PreCondit =      { fg = minimalist.bg_1 }, -- preprocessor #if, #else, #endif, etc.
    Special =        { fg = minimalist.fg }, -- any special symbol
    SpecialChar =    { fg = minimalist.bg_1 }, -- special character in a constant
    Tag =            { fg = minimalist.fg }, -- you can use CTRL-] on this
    Delimiter =      { fg = minimalist.bg_1 }, -- character that needs attention like , or .
    SpecialComment = { fg = minimalist.standout_less }, -- special things inside a comment
    Debug =          { fg = minimalist.standout }, -- debugging statements
    Underlined =     { fg = minimalist.standout_more, bg = minimalist.none, style = 'underline' }, -- text that stands out, HTML links
    Ignore =         { fg = minimalist.dark_bg_2 }, -- left blank, hidden
    Error =          { fg = minimalist.standout_special_1, bg = minimalist.error_bg, style = 'bold' }, -- any erroneous construct TODO
    Todo =           { fg = minimalist.bg_1, bg = minimalist.none, style = 'bold,italic' }, -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- Help docs
    helpHeadLine       = { fg = minimalist.bright_bg_1_2, style = 'bold' },
    helpCommand        = { fg = minimalist.standout_less },
    helpHyperTextEntry = { fg = minimalist.standout },
    helpHyperTextJump  = { fg = minimalist.standout_more },
    helpSectionDelim   = { fg = minimalist.bg_2 },

    -- R syntax

    rNamespace           = { fg = minimalist.standout_less, style = 'bold' },
    rType                = { fg = minimalist.standout_less },
    rFunctionName        = { fg = minimalist.standout },
    rKeywordFunction     = { fg = minimalist.bright_bg_1_2, style = 'bold' },
    rCommentKey          = { fg = minimalist.dark_bg_1 },
    rCodeSection         = { fg = minimalist.standout_special_1, style = 'bold' },
    rCodeSectionEndDelim = { fg = minimalist.bg_2 },

    -- Doc
    rOTitle      = { fg = minimalist.bright_bg_1, style = 'bold' },
    rOTitleBlock = { fg = minimalist.bright_bg_1 },
    rOBlock      = { fg = minimalist.bright_bg_1 },
    rOTag        = { fg = minimalist.standout_special_3 },
    rOCommentKey = { fg = minimalist.dark_bg_1 },

    -- Julia syntax

    juliaSymbol              = { fg = minimalist.fg },
    juliaCommentDelim        = { fg = minimalist.dark_bg_1 },
    juliaCommentKey          = { fg = minimalist.dark_bg_1 },
    juliaCodeSection         = { fg = minimalist.standout_special_1, style = 'bold' },
    juliaCodeSectionEndDelim = { fg = minimalist.bg_2 },

    -- Literal `function`, `macro`, `struct`, etc
    juliaBlKeywordStart_1 = { fg = minimalist.bright_bg_1_2, style = 'bold' },
    juliaBlKeywordStart_2 = { fg = minimalist.standout },
    juliaBlKeywordEnd = { fg = minimalist.bg_2 },  -- TODO Previously, bg_1 is used

    juliaKeyword = { fg = minimalist.standout_special_1 },
    juliaFunctionName = { fg = minimalist.standout },
    juliaMacro = { fg = minimalist.standout_special_1_2 },
    -- juliaConditional = { fg = minimalist.standout },  -- TODO No need?
    juliaException = { fg = minimalist.standout },
    juliaFunctionCall = { fg = minimalist.standout_less },
    juliaParDelim = { fg = minimalist.bg_1 },
    juliaComma = { fg = minimalist.bg_1 },
    juliaSemicolon = { fg = minimalist.bg_1 },
    juliaInfixKeyword = { fg = minimalist.bright_bg_1_2 },
    juliaComprehensionFor = { fg = minimalist.standout },
    juliaBlKeyword = { fg = minimalist.standout },
    juliaStringDelim = { fg = minimalist.bg_1 },  -- String's quotes
    juliaStringPrefixed = { fg = minimalist.standout_less },  -- R's func, etc
    -- Doc
    juliaDocStringDelim = { fg = minimalist.dark_bg_1 },
    juliaDocString = { fg = minimalist.bright_bg_1 },
    juliacocCode = { fg = minimalist.fg },
    helpExample = { fg = minimalist.standout_less },

    -- Vim
    vimFunc       = { fg = minimalist.standout },  -- Custom hl group `function`
    vimKeywordEnd = { fg = minimalist.bg_1 },  -- end, endfunction, endif, endfu, etc
    vimNotFunc    = { fg = minimalist.standout },  -- if, while, return, etc
    vimOption     = { fg = minimalist.standout_less },
    vimSynType    = { fg = minimalist.standout_less },
    vimGroupName  = { fg = minimalist.fg },
    vimSynReg     = { fg = minimalist.standout_less },
    vimGroup      = { fg = minimalist.fg },

    -- Lua
    luaFunction   = { fg = minimalist.standout },
    luaStatement  = { fg = minimalist.standout },  -- TODO Override `Statement`. R'syntax is wrong?
    luaTable      = { fg = minimalist.bg_1 },
    luaKeywordEnd = { fg = minimalist.bg_1 },


    -- Pandoc
    pandocAtxStart  = { fg = minimalist.standout, style = "bold" },
    pandocAtxHeader = { fg = minimalist.standout, style = "bold" },
    pandocDelimitedCodeBlockStart = { fg = minimalist.bg_1 },
    pandocDelimitedCodeBlockLanguage = { fg = minimalist.bg_1 },
    pandocStrong = { fg = minimalist.standout_more, style = 'bold' },
    pandocEmphasis = { fg = minimalist.standout_more, style = 'italic' },  -- Italicized text
    pandocNoFormatted = { fg = minimalist.standout_less },  -- Code block
    pandocReferenceDefinition = { fg = minimalist.bright_bg_1, style = 'italic' },  -- Concealed link title. Use brighter color because it's concealed


    -- Markdown. NOTE This also affects other filetype e.g. R

    -- mkdHeading =   { fg = minimalist.standout, style = "bold" },
    -- htmlH1 =   { fg = minimalist.standout, style = "bold" },
    -- htmlH2 =   { fg = minimalist.standout, style = "bold" },
    -- htmlH3 =   { fg = minimalist.standout, style = "bold" },
    -- htmlH4 =   { fg = minimalist.standout, style = "bold" },
    -- htmlH5 =   { fg = minimalist.standout, style = "bold" },
    -- htmlH6 =   { fg = minimalist.standout, style = "bold" },
    -- markdownH1 = { fg = minimalist.standout_less, style = "bold" },
    -- markdownH2 = { fg = minimalist.standout, style = "bold" },
    -- markdownH3 = { fg = minimalist.standout_more, style = "bold" },
    -- markdownH1Delimiter = { fg = minimalist.standout_less },
    -- markdownH2Delimiter = { fg = minimalist.standout },
    -- markdownH3Delimiter = { fg = minimalist.standout_more },

    -- mkdBold = { fg = minimalist.dark_bg_1 },
    -- htmlBold = { fg = minimalist.standout_more, style = 'bold' },
    -- mkdItalic = { fg = minimalist.dark_bg_1 },
    -- htmlItalic = { fg = minimalist.standout_more, style = 'italic' },

    -- mkdDelimiter = { fg = minimalist.bg_1 },
    -- mkdCodeDelimiter = { fg = minimalist.bg_1 },
    -- mkdCode = { fg = minimalist.standout_less },
    -- htmlLink = { fg = minimalist.dark_standout_less_2, style = "italic" },
    -- mkdUrl = { fg = minimalist.bg_1, style = 'italic' },

    -- XML
    xmlTag     = { fg = minimalist.dark_bg_1 },
    xmlTagName = { fg = minimalist.bg_1 },

  }

  	-- Italic comments
	if vim.g.minimalist_italic == true then
		syntax.Conditional =		{ fg = minimalist.standout, bg = minimalist.none, style = 'italic' } -- italic if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = minimalist.standout, bg = minimalist.none, style = 'italic' } -- italic for, do, while, etc.
		syntax.Repeat =				{ fg = minimalist.standout, bg = minimalist.none, style = 'italic' } -- italic any other keyword
		syntax.Comment =		{ fg = minimalist.bg_2, bg = minimalist.none, style = 'italic' } -- italic comments
		syntax.Function =		{ fg = minimalist.standout_less, bg = minimalist.none, style = 'italic' } -- italic funtion names
		syntax.Identifier =		{ fg = minimalist.standout_less, bg = minimalist.none, style = 'italic' }; -- any variable name
    syntax.String = { fg = minimalist.standout_more, bg = minimalist.none, style= 'italic' } -- any string
	else
		syntax.Comment =		{fg = minimalist.bg_2} -- normal comments
		syntax.Conditional =		{ fg = minimalist.standout } -- normal if, then, else, endif, switch, etc.
		syntax.Keyword =			{ fg = minimalist.standout } -- normal for, do, while, etc.
		syntax.Repeat =				{ fg = minimalist.standout } -- normal any other keyword
		syntax.Function =		{ fg = minimalist.standout_less} -- normal function names
		syntax.Identifier =		{ fg = minimalist.standout_less}; -- any variable name
    syntax.String = { fg = minimalist.standout_more } -- any string
	end

  return syntax

end


theme.loadEditor = function ()
    -- Editor highlight groups

  local editor = {
    MsgArea =          { fg = minimalist.fg },  -- Command line
    NormalFloat =      { fg = minimalist.fg, bg = minimalist.bg }, -- normal text and background color
    FloatBorder =      { fg = minimalist.dark_bg_1, bg = minimalist.bg },  -- TODO Need?
    ColorColumn =      { fg = minimalist.none, bg = minimalist.dark_bg_2 }, --  used for the columns set with 'colorcolumn'
    Conceal =          { fg = minimalist.bg_1 }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor =           { fg = minimalist.cursor_fg, bg = minimalist.cursor_bg, style = 'reverse' }, -- the character under the cursor
    CursorIM =         { fg = minimalist.cursor_fg, bg = minimalist.cursor_bg, style = 'reverse' }, -- the character under the cursor
    TermCursor =       { fg = minimalist.cursor_fg, bg = minimalist.cursor_bg, style = 'reverse' }, -- the character under the cursor
    TermCursorNC =     { fg = minimalist.cursor_fg, bg = minimalist.cursor_bg, style = 'reverse' }, -- the character under the cursor
    Directory =        { fg = minimalist.bright_bg_1, bg = minimalist.none }, -- directory names (and other special names in listings)

    DiffAdd    = { fg = minimalist.none, bg = minimalist.git_add, },
    DiffChange = { fg = minimalist.none, bg = minimalist.git_change, },
    DiffDelete = { fg = minimalist.none, bg = minimalist.git_delete, },
    DiffText   = { fg = minimalist.none, bg = minimalist.git_change, },  -- Changed text within a changed line TODO Correct?

    EndOfBuffer =      { fg = minimalist.bg },  -- Filler lines `~`
    ErrorMsg =         { fg = minimalist.none },
    Folded =           { fg = minimalist.standout_less, bg = minimalist.fold_bg  },
    FoldColumn =       { fg = minimalist.bright_bg_1 },
    LineNr =           { fg = minimalist.dark_bg_1 },
    MatchParen =       { fg = minimalist.standout, bg = minimalist.none },
    ModeMsg =          { fg = minimalist.standout_more },
    MoreMsg =          { fg = minimalist.standout_more },
    NonText =          { fg = minimalist.standout_special_1 },  -- TODO Telescope's status text. Source is at pickers.lua: virt_text = { { text, "NonText" } }
    Pmenu =            { fg = minimalist.fg, bg = minimalist.bg },
    PmenuSel =         { fg = minimalist.standout, bg = minimalist.slightly_lighter_bg },
    PmenuSbar =        {                      bg = minimalist.bg },
    PmenuThumb =       {                      bg = minimalist.dark_bg_1 },
    Question =         { fg = minimalist.standout_more },
    QuickFixLine =     { fg = minimalist.fg, minimalist.bg_1, style = 'reverse' },
    qfLineNr =         { fg = minimalist.fg, minimalist.bg_1, style = 'reverse' },
    IncSearch =        { fg = minimalist.none, bg = minimalist.standout_special_2_2 },
    Search =           { fg = minimalist.none, bg = minimalist.standout_special_2 },
    SpecialKey =       { fg = minimalist.bright_bg_1_2 },
    SpellBad =         { fg = minimalist.standout, bg = minimalist.none, style = 'italic,undercurl' },
    SpellCap =         { fg = minimalist.bright_bg_1, bg = minimalist.none, style = 'italic,undercurl' },
    SpellLocal =       { fg = minimalist.standout_less, bg = minimalist.none, style = 'italic,undercurl' },
    SpellRare =        { fg = minimalist.bright_bg_1_2, bg = minimalist.none, style = 'italic,undercurl' },
    StatusLine =       { fg = minimalist.bg_3, bg = minimalist.slightly_lighter_bg },
    StatusLineNC =     { fg = minimalist.bg_3, bg = minimalist.slightly_lighter_bg },  -- Hacky way to create a separator with very subtle color
    StatusLineTerm =   { fg = minimalist.bg_3, bg = minimalist.bg },
    StatusLineTermNC = { fg = minimalist.bg_3, bg = minimalist.bg },
    TabLineFill =      { fg = minimalist.fg },
    TablineSel =       { fg = minimalist.standout_less, bg = minimalist.standout },
    Tabline =          { fg = minimalist.fg },
    Title =            { fg = minimalist.standout_more, bg = minimalist.none, style = 'bold' },
    Visual =           { fg = minimalist.none, bg = minimalist.dark_bg_2 },
    VisualNOS =        { fg = minimalist.none, bg = minimalist.dark_bg_2 },
    WarningMsg =       { fg = minimalist.standout_more },
    WildMenu =         { fg = minimalist.diff_mode_added_line, bg = minimalist.none, style = 'bold' },
    CursorColumn =     { fg = minimalist.none, bg = minimalist.cursorlinefg },
    CursorLineNr =     { fg = minimalist.dark_bg_1, bg = minimalist.slightly_darker_bg },  -- 'Disable' fg by setting it to the same as LineNr
    CursorLine =       { fg = minimalist.standout, bg = minimalist.slightly_darker_bg },
    ToolbarLine =      { fg = minimalist.fg, bg = minimalist.dark_bg_2 },
    ToolbarButton =    { fg = minimalist.fg, bg = minimalist.none, style = 'bold' },
    NormalMode =       { fg = minimalist.fg, bg = minimalist.none, style = 'reverse' },
    InsertMode =       { fg = minimalist.standout_more, bg = minimalist.none, style = 'reverse' },
    ReplacelMode =     { fg = minimalist.standout, bg = minimalist.none, style = 'reverse' },
    VisualMode =       { fg = minimalist.bright_bg_1_2, bg = minimalist.none, style = 'reverse' },
    CommandMode =      { fg = minimalist.fg, bg = minimalist.none, style = 'reverse' },
    Warnings =         { fg = minimalist.standout_more },

    healthError =   { fg = minimalist.standout },
    healthSuccess = { fg = minimalist.standout_more },
    healthWarning = { fg = minimalist.standout_more },

    -- dashboard
    DashboardShortCut = { fg = minimalist.bright_bg_1 },
    DashboardHeader =   { fg = minimalist.bright_bg_1_2 },
    DashboardCenter =   { fg = minimalist.standout_less },
    DashboardFooter =   { fg = minimalist.standout_more, style = "italic" },
  }

  -- Options:

  --Set transparent background
  if vim.g.minimalist_disable_background then
    editor.Normal =     { fg = minimalist.fg, bg = minimalist.none } -- normal text and background color
    editor.SignColumn = { fg = minimalist.fg, bg = minimalist.none }
  else
    editor.Normal =     { fg = minimalist.fg, bg = minimalist.bg } -- normal text and background color
    editor.SignColumn = { fg = minimalist.fg, bg = minimalist.bg }
  end

  -- Remove window split borders
  if vim.g.minimalist_borders then
    editor.VertSplit = { fg = minimalist.dark_bg_1 }
  else
    editor.VertSplit = { fg = minimalist.bg }
  end

  return editor
end

theme.loadTerminal = function ()
  -- *cterm-colors*
  -- NR-16   NR-8    COLOR NAME ~
  -- 0	    0	    Black
  -- 1	    4	    DarkBlue
  -- 2	    2	    DarkGreen
  -- 3	    6	    DarkCyan
  -- 4	    1	    DarkRed
  -- 5	    5	    DarkMagenta
  -- 6	    3	    Brown, DarkYellow
  -- 7	    7	    LightGray, LightGrey, Gray, Grey
  -- 8	    0*	    DarkGray, DarkGrey
  -- 9	    4*	    Blue, LightBlue
  -- 10	    2*	    Green, LightGreen
  -- 11	    6*	    Cyan, LightCyan
  -- 12	    1*	    Red, LightRed
  -- 13	    5*	    Magenta, LightMagenta
  -- 14	    3*	    Yellow, LightYellow
  -- 15	    7*	    White

  vim.g.terminal_color_0 = minimalist.dark_bg_1
  vim.g.terminal_color_1 = minimalist.standout_more
  vim.g.terminal_color_2 = minimalist.dark_standout_less_2  -- TODO Bold missing

  vim.g.terminal_color_3 = minimalist.standout_more
  vim.g.terminal_color_4 = minimalist.standout_less  -- TODO Bold missing
  vim.g.terminal_color_5 = minimalist.standout
  vim.g.terminal_color_6 = minimalist.dark_standout_less
  vim.g.terminal_color_7 = minimalist.dark_standout_less
  vim.g.terminal_color_8 = minimalist.bg_2
  vim.g.terminal_color_9 = minimalist.bright_standout_less
  vim.g.terminal_color_10 = minimalist.dark_standout_less_2
  vim.g.terminal_color_11 = minimalist.standout
  vim.g.terminal_color_12 = minimalist.standout_less
  vim.g.terminal_color_13 = minimalist.standout_more -- TODO What is this?
  vim.g.terminal_color_14 = minimalist.standout
  vim.g.terminal_color_15 = minimalist.fg

end

theme.loadTreeSitter = function ()
  -- TreeSitter highlight groups

  local treesitter = {
    TSAnnotation =        { fg = minimalist.diff_mode_added_line },    -- For C++/Dart attributes, annotations thatcan be attached to the code to denote some kind of meta information.
    TSCharacter=          { fg = minimalist.standout_more },    -- For characters.
    TSConstructor =       { fg = minimalist.bright_bg_1_2 }, -- For constructor calls and definitions: `=                                                                          { }` in Lua, and Java constructors.
    TSConstant =          { fg = minimalist.bg_1 },    -- For constants
    TSFloat =             { fg = minimalist.standout_more },    -- For floats
    TSNumber =            { fg = minimalist.standout_more },    -- For all number
    TSString =            { fg = minimalist.standout_more },    -- For strings.

    TSAttribute =         { fg = minimalist.standout_more },    -- (unstable) TODO: docs
    TSBoolean=            { fg = minimalist.standout_more },    -- For booleans.
    TSConstBuiltin =      { fg = minimalist.bright_bg_1 },    -- For constant that are built in the language: `nil` in Lua.
    TSConstMacro =        { fg = minimalist.bright_bg_1 },    -- For constants that are defined by macros: `NULL` in C.
    TSError =             { fg = minimalist.standout },    -- For syntax/parser errors.
    TSException =         { fg = minimalist.standout_more },    -- For exception related keywords.
    TSField =             { fg = minimalist.fg }, -- For fields.
    TSFuncMacro =         { fg = minimalist.bright_bg_1 },    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    TSInclude =           { fg = minimalist.bright_bg_1_2 },    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    TSLabel =             { fg = minimalist.standout_more }, -- For labels: `label:` in C and `:label:` in Lua.
    TSNamespace =         { fg = minimalist.fg},    -- For identifiers referring to modules and namespaces.
    TSOperator =          { fg = minimalist.bright_bg_1_2 }, -- For any operator: `+`, but also `->` and `*` in C.
    TSParameter =         { fg = minimalist.param }, -- For parameters of a function.
    TSParameterReference= { fg = minimalist.param },    -- For references to parameters of a function.
    TSProperty =          { fg = minimalist.param }, -- Same as `TSField`.
    TSPunctDelimiter =    { fg = minimalist.standout_less }, -- For delimiters ie: `.`
    TSPunctBracket =      { fg = minimalist.standout_less }, -- For brackets and parens.
    TSPunctSpecial =      { fg = minimalist.standout_less }, -- For special punctutation that does not fall in the catagories before.
    TSStringRegex =       { fg = minimalist.bright_bg_1 }, -- For regexes.
    TSStringEscape =      { fg = minimalist.dark_bg_2 }, -- For escape characters within a string.
    TSSymbol =            { fg = minimalist.standout_more },    -- For identifiers referring to symbols or atoms.
    TSType =              { fg = minimalist.bright_bg_1_2},    -- For types.
    TSTypeBuiltin =       { fg = minimalist.bright_bg_1_2},    -- For builtin types.
    TSTag =               { fg = minimalist.fg },    -- Tags like html tag names.
    TSTagDelimiter =      { fg = minimalist.standout_more },    -- Tag delimiter like `<` `>` `/`
    TSText =              { fg = minimalist.fg },    -- For strings considenord11_gui text in a markup language.
    TSTextReference =     { fg = minimalist.standout_more }, -- FIXME
    TSEmphasis =          { fg = minimalist.param },    -- For text to be represented with emphasis.
    TSUnderline =         { fg = minimalist.fg, bg = minimalist.none, style = 'underline' },    -- For text to be represented with an underline.
    TSTitle =             { fg = minimalist.param, bg = minimalist.none, style = 'bold' },    -- Text that is part of a title.
    TSLiteral =           { fg = minimalist.fg },    -- Literal text.
    TSURI =               { fg = minimalist.standout_more },    -- Any URI like a link or email.        TSAnnotation =                                                                  { fg = minimalist.standout },    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.

  }

  treesitter.TSComment=          { fg = minimalist.bg_2 }
  treesitter.TSConditional =     { fg = minimalist.bright_bg_1_2 }   -- For keywords related to conditionnals.
  treesitter.TSKeyword =         { fg = minimalist.bright_bg_1_2 } -- For keywords that don't fall in previous categories.
  treesitter.TSRepeat =          { fg = minimalist.bright_bg_1_2 }    -- For keywords related to loops.
  treesitter.TSKeywordFunction = { fg = minimalist.standout_less }
  treesitter.TSFunction =        { fg = minimalist.standout_less }    -- For fuction (calls and definitions).
  treesitter.TSMethod =          { fg = minimalist.bright_bg_1 }    -- For method calls and definitions.
  treesitter.TSFuncBuiltin =     { fg = minimalist.standout_less }
  treesitter.TSVariable =        { fg = minimalist.fg }-- Any variable name that does not have another highlight.
  treesitter.TSVariableBuiltin = { fg = minimalist.fg }

  return treesitter

end

theme.loadLSP = function ()
  -- Lsp highlight groups

  local lsp = {
    LspDiagnosticsDefaultError =           { fg = minimalist.standout }, -- used for "Error" diagnostic virtual text
    LspDiagnosticsSignError =              { fg = minimalist.standout }, -- used for "Error" diagnostic signs in sign column
    LspDiagnosticsFloatingError =          { fg = minimalist.standout }, -- used for "Error" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextError =       { fg = minimalist.standout }, -- Virtual text "Error"
    LspDiagnosticsUnderlineError =         { style = 'undercurl', sp = minimalist.standout }, -- used to underline "Error" diagnostics.
    LspDiagnosticsDefaultWarning =         { fg = minimalist.standout_more}, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsSignWarning =            { fg = minimalist.standout_more}, -- used for "Warning" diagnostic signs in sign column
    LspDiagnosticsFloatingWarning =        { fg = minimalist.standout_more}, -- used for "Warning" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextWarning =     { fg = minimalist.standout_more}, -- Virtual text "Warning"
    LspDiagnosticsUnderlineWarning =       { style = 'undercurl', sp = minimalist.standout_more }, -- used to underline "Warning" diagnostics.
    LspDiagnosticsDefaultInformation =     { fg = minimalist.param }, -- used for "Information" diagnostic virtual text
    LspDiagnosticsSignInformation =        { fg = minimalist.param },  -- used for "Information" diagnostic signs in sign column
    LspDiagnosticsFloatingInformation =    { fg = minimalist.param }, -- used for "Information" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextInformation = { fg = minimalist.param }, -- Virtual text "Information"
    LspDiagnosticsUnderlineInformation =   { style = 'undercurl', sp = minimalist.param }, -- used to underline "Information" diagnostics.
    LspDiagnosticsDefaultHint =            { fg = minimalist.bright_bg_1_2  },  -- used for "Hint" diagnostic virtual text
    LspDiagnosticsSignHint =               { fg = minimalist.bright_bg_1_2  }, -- used for "Hint" diagnostic signs in sign column
    LspDiagnosticsFloatingHint =           { fg = minimalist.bright_bg_1_2  }, -- used for "Hint" diagnostic messages in the diagnostics float
    LspDiagnosticsVirtualTextHint =        { fg = minimalist.bright_bg_1_2  }, -- Virtual text "Hint"
    LspDiagnosticsUnderlineHint =          { style = 'undercurl', sp = minimalist.param }, -- used to underline "Hint" diagnostics.
    LspReferenceText =                     { fg = minimalist.fg, bg = minimalist.dark_bg_2 }, -- used for highlighting "text" references
    LspReferenceRead =                     { fg = minimalist.fg, bg = minimalist.dark_bg_2 }, -- used for highlighting "read" references
    LspReferenceWrite =                    { fg = minimalist.fg, bg = minimalist.dark_bg_2 }, -- used for highlighting "write" references
  }

  return lsp

end

theme.loadPlugins = function()
  -- Plugins highlight groups

  local plugins = {

    -- Spectre
    SpectreFileDirectory = { fg = minimalist.bg_2 },
    SpectreFileName = { fg = minimalist.bright_bg_1_2, style = 'bold,underline' },
    SpectreUI      = { fg = minimalist.bg_3, style = 'italic' },
    SpectreSearch  = { fg = minimalist.standout_more },
    SpectreReplace = { bg = minimalist.SpectreReplace_bg },
    SpectreBorder  = { fg = minimalist.dark_bg_1 },

    -- toggleterm
    ToggleTermBorder = { fg = minimalist.dark_bg_1 },

    -- symbols-outline
    FocusedSymbol = { fg = minimalist.standout, style = 'bold' },
    SymbolsOutlineConnector = { fg = minimalist.red },  -- TODO

    -- lightspeed

    LightspeedGreyWash = { fg = minimalist.bg_1 },

    LightspeedUniqueChar     = { fg = minimalist.fg, style = 'bold' },
    LightspeedMaskedChar     = { fg = minimalist.lightspeed_masked_char },
    LightspeedUnlabeledMatch = { fg = minimalist.fg, style = 'bold' },

    LightspeedOneCharMatch           = { fg = minimalist.lightspeed_label, style = 'bold' },
    LightspeedLabel                  = { fg = minimalist.lightspeed_label, style = 'bold' },
    LightspeedLabelOverlapped        = { fg = minimalist.lightspeed_label_overlapped },
    LightspeedLabelDistant           = { fg = minimalist.lightspeed_label_distance, style = 'bold' },
    LightspeedLabelDistantOverlapped = { fg = minimalist.lightspeed_label_distance_overlapped },
    LightspeedShortcut               = { fg = minimalist.lightspeed_shortcut, style = 'bold' },
    LightspeedShortcutOverlapped     = { fg = minimalist.lightspeed_shortcut, style = 'bold' },

    LightspeedPendingOpArea       = { fg = minimalist.lightspeed_label },
    LightspeedPendingChangeOpArea = { fg = minimalist.lightspeed_label, style = 'strikethrough' },

    -- LspTrouble
    LspTroubleText =   { fg = minimalist.fg },
    LspTroubleCount =  { fg = minimalist.bright_bg_1_2, bg = minimalist.param },
    LspTroubleNormal = { fg = minimalist.fg, bg = minimalist.sidebar },

    -- Diff
    diffAdded =     { fg = minimalist.standout_more },
    diffRemoved =   { fg = minimalist.standout },
    diffChanged =   { fg = minimalist.standout_more },
    diffOldFile =   { fg = minimalist.yelow },
    diffNewFile =   { fg = minimalist.diff_mode_added_line },
    diffFile =      { fg = minimalist.bright_bg_1 },
    diffLine =      { fg = minimalist.standout },
    diffIndexLine = { fg = minimalist.bright_bg_1_2 },

    -- Neogit

    NeogitHunkHeader           = { fg = minimalist.bg_1, style = 'underline' },
    NeogitHunkHeaderHighlight  = { fg = minimalist.bg_1, bg = minimalist.slightly_darker_bg, style = 'underline' },
    NeogitDiffContextHighlight = { fg = minimalist.none, bg = minimalist.slightly_darker_bg },
    NeogitDiffAdd              = { fg = minimalist.fg, bg = minimalist.git_add },
    NeogitDiffAddHighlight     = { fg = minimalist.fg, bg = minimalist.git_add },
    NeogitDiffDelete           = { fg = minimalist.fg, bg = minimalist.git_delete },
    NeogitDiffDeleteHighlight  = { fg = minimalist.fg, bg = minimalist.git_delete },
    NeogitBranch               = { fg = minimalist.param },
    NeogitRemote               = { fg = minimalist.bright_bg_1_2 },

    NeogitStagedChanges   = { fg = minimalist.bright_bg_1_2, style = 'bold,italic,underline' },
    NeogitUnstagedChanges = { fg = minimalist.standout_special_1, style = 'bold,italic,underline' },
    -- NeogitStash =

    NeogitCommitViewHeader = { fg = minimalist.standout_special_1, bg = minimalist.slightly_lighter_bg },
    NeogitFilePath = { fg = minimalist.standout_more },

    NeogitNotificationInfo    = { fg = minimalist.standout_less },
    NeogitNotificationWarning = { fg = minimalist.standout_more },
    NeogitNotificationError   = { fg = minimalist.standout },

    -- GitGutter TODO
    GitGutterAdd =    { fg = minimalist.red  , bg = minimalist.red}, -- diff mode: Added line |diff.txt|
    GitGutterChange = { fg = minimalist.red  , bg = minimalist.red}, -- diff mode: Changed line |diff.txt|
    GitGutterDelete = { fg = minimalist.blue , bg = minimalist.red}, -- diff mode: Deleted line |diff.txt|

    -- GitSigns
    GitSignsChange =   { fg = minimalist.git_gutter_change }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeNr = { fg = minimalist.bg_1, bg = minimalist.git_change }, -- diff mode: Changed line |diff.txt|
    GitSignsChangeLn = { bg = minimalist.git_change }, -- diff mode: Changed line |diff.txt|
    GitSignsAdd =      { fg = minimalist.git_gutter_add }, -- diff mode: Added line |diff.txt|
    GitSignsAddNr =    { fg = minimalist.bg_1, bg = minimalist.git_add }, -- diff mode: Added line |diff.txt|
    GitSignsAddLn =    { bg = minimalist.git_add }, -- diff mode: Added line |diff.txt|
    GitSignsDelete =   { fg = minimalist.git_gutter_delete }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteNr = { fg = minimalist.bg_1, bg = minimalist.git_delete }, -- diff mode: Deleted line |diff.txt|
    GitSignsDeleteLn = { bg = minimalist.git_delete }, -- diff mode: Deleted line |diff.txt|

    -- Telescope

    TelescopeNormal         = { fg = minimalist.fg, bg = minimalist.bg },
    TelescopeSelection      = { fg = minimalist.standout },
    TelescopeMatching       = { fg = minimalist.standout_more },
    TelescopePromptPrefix   = { fg = minimalist.dark_bg_1 },
    TelescopeSelectionCaret = { fg = minimalist.bright_bg_1_2 },
    TelescopeBorder         = { fg = minimalist.dark_bg_1 },
    TelescopePromptBorder   = { fg = minimalist.dark_bg_1 },
    TelescopeResultsBorder  = { fg = minimalist.dark_bg_1 },
    TelescopePreviewBorder  = { fg = minimalist.dark_bg_1 },

    TelescopeResultsClass      = { fg = minimalist.standout_special_1 },
    TelescopeResultsConstant   = { fg = minimalist.bright_bg_1 },
    TelescopeResultsField      = { fg = minimalist.bright_bg_1 },
    TelescopeResultsFunction   = { fg = minimalist.standout_less },
    TelescopeResultsMethod     = { fg = minimalist.standout_less },
    TelescopeResultsOperator   = { fg = minimalist.standout_more },
    TelescopeResultsStruct     = { fg = minimalist.standout_special_1 },
    TelescopeResultsVariable   = { fg = minimalist.standout_special_1 },
    TelescopeResultsDiffChange = { fg = minimalist.git_delete_emph, bg = minimalist.none },

    -- NvimTree
    NvimTreeRootFolder =        { fg = minimalist.standout_special_1 },
    NvimTreeGitDirty =          { fg = minimalist.standout_more },
    NvimTreeGitNew =            { fg = minimalist.standout_more },
    NvimTreeImageFile =         { fg = minimalist.standout_more },
    NvimTreeExecFile =          { fg = minimalist.standout_more },
    NvimTreeSpecialFile =       { fg = minimalist.bright_bg_1_2 , style = "underline" },
    NvimTreeFolderName=         { fg = minimalist.standout_less },
    NvimTreeEmptyFolderName=    { fg = minimalist.dark_bg_2 },
    NvimTreeFolderIcon=         { fg = minimalist.folder_icon },
    NvimTreeIndentMarker =      { fg = minimalist.indent_marker },
    LspDiagnosticsError =       { fg = minimalist.standout },
    LspDiagnosticsWarning =     { fg = minimalist.standout_more },
    LspDiagnosticsInformation = { fg = minimalist.param },
    LspDiagnosticsHint =        { fg = minimalist.bright_bg_1_2 },

    -- WhichKey
    WhichKey =          { fg = minimalist.fg , style = 'bold'},
    WhichKeyGroup =     { fg = minimalist.fg },
    WhichKeyDesc =      { fg = minimalist.bright_bg_1, style = 'italic' },
    WhichKeySeperator = { fg = minimalist.fg },
    WhichKeyFloating =  { bg = minimalist.bg },
    WhichKeyFloat =     { bg = minimalist.bg },

    -- Compe
    CmpDocumentation       = { fg = minimalist.fg, bg = minimalist.bg },
    CmpDocumentationBorder = { fg = minimalist.dark_bg_1, bg = minimalist.bg },

    -- LspSaga: TODO https://github.com/glepnir/lspsaga.nvim/pull/198/files

    LspFloatWinNormal        = { bg = minimalist.bg },
    LspSagaFinderSelection   = { fg = minimalist.standout },
    LspSagaCodeActionContent = { fg = minimalist.param },
    DefinitionIcon           = { fg = minimalist.bright_bg_1 },
    ReferencesIcon           = { fg = minimalist.bright_bg_1 },
    TargetWord               = { fg = minimalist.standout_less },

    LspSagaBorderTitle = { fg = minimalist.standout_less },

    DefinitionPreviewTitle = { fg = minimalist.bright_bg_1_2 },
    LspSagaCodeActionTitle = { fg = minimalist.bright_bg_1_2 },
    LspSagaCodeActionTitle = { fg = minimalist.bright_bg_1_2 },
    LspSagaDiagnosticHeader = { fg = minimalist.bright_bg_1_2 },

    ReferencesCount = { fg = minimalist.bright_bg_1_2 },
    DefinitionCount = { fg = minimalist.bright_bg_1_2 },

    LspFloatWinBorder          = { fg = minimalist.dark_bg_1 },
    LspSagaSignatureHelpBorder = { fg = minimalist.dark_bg_1 },
    LspSagaHoverBorder         = { fg = minimalist.dark_bg_1 },
    LspSagaRenameBorder        = { fg = minimalist.dark_bg_1 },
    LspSagaLspFinderBorder     = { fg = minimalist.dark_bg_1 },
    LspSagaDefPreviewBorder    = { fg = minimalist.dark_bg_1 },
    LspSagaCodeActionBorder    = { fg = minimalist.dark_bg_1 },
    LspSagaDiagnosticBorder    = { fg = minimalist.dark_bg_1},

    LspSagaDiagnosticTruncateLine = {fg = minimalist.dark_bg_1 },
    ProviderTruncateLine          = {fg = minimalist.dark_bg_1},
    LspSagaShTruncateLine         = {fg = minimalist.dark_bg_1},
    LspSagaDocTruncateLine        = {fg = minimalist.dark_bg_1},
    LineDiagTuncateLine           = {fg = minimalist.dark_bg_1},
    LspSagaCodeActionTruncateLine = {fg = minimalist.dark_bg_1},

    -- trouble
    TroubleCount    = { fg = minimalist.standout, bg = minimalist.slightly_lighter_bg },
    TroubleFoldIcon = { fg = minimalist.indent_marker },
    TroubleFile     = { fg = minimalist.bright_bg_1_2, style = 'bold,underline' },


    -- Sneak
    -- Sneak =      { fg = minimalist.bg, bg = minimalist.fg },
    -- SneakScope = { bg = minimalist.dark_bg_2 },

    -- Indent Blankline
    IndentBlanklineChar =        { fg = minimalist.standout },
    IndentBlanklineContextChar = { fg = minimalist.standout },

    -- Illuminate
    illuminatedWord =    { bg = minimalist.standout },
    illuminatedCurWord = { bg = minimalist.standout },

    -- nvim-dap
    -- DapBreakpoint = { fg = minimalist.standout_more},
    -- DapStopped =    { fg = minimalist.standout_more},

    -- Hop
    -- HopNextKey =   { fg = minimalist.fg, style = 'bold' },
    -- HopNextKey1 =  { fg = minimalist.standout_less, style = 'bold' },
    -- HopNextKey2 =  { fg = minimalist.fg},
    -- HopUnmatched = { fg = minimalist.standout },

    -- Fern
    -- FernBranchText = { fg = minimalist.bg_2},

    -- DevIcon
    DevIconR         = { fg = minimalist.DevIconR },
    DevIconRmd       = { fg = minimalist.DevIconRmd },
    DevIconMarkdown  = { fg = minimalist.DevIconMarkdown },
    DevIconJulia     = { fg = minimalist.DevIconJulia },  -- TODO Not working
    DevIconVim       = { fg = minimalist.DevIconVim },
    DevIconGitIgnore = { fg = minimalist.DevIconGitIgnore }
  }
  -- Options:

  -- Disable nvim-tree background
  if vim.g.minimalist_disable_background then
    plugins.NvimTreeNormal = { fg = minimalist.fg, bg = minimalist.none }
  else
    plugins.NvimTreeNormal = { fg = minimalist.fg, bg = minimalist.sidebar }
  end

  if vim.g.minimalist_enable_sidebar_background then
    plugins.NvimTreeNormal = { fg = minimalist.fg, bg = minimalist.sidebar }
  else
    plugins.NvimTreeNormal = { fg = minimalist.fg, bg = minimalist.none }
  end

  return plugins

end

return theme
