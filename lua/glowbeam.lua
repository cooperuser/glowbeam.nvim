-- Preamble {{{
--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--
-- luacheck: read globals
--
-- }}}
-- Color definitions {{{
local lush = require('lush')
local hsl = lush.hsl

local red       = hsl("#ff6c6b")
local orange    = hsl("#da8548")
local yellow    = hsl("#ecbe7b")
local green     = hsl("#98be65")
local teal      = hsl("#4db5bd")
-- local cyan      = hsl("#46D9FF")
local blue      = hsl("#51afef")
local magenta   = hsl("#c678dd")
local pink      = hsl("#fdb5db")
local violet    = hsl("#a9a1e1")
local white     = hsl("#bbc2cf")
local black     = hsl("#141414")
-- local black     = hsl("#0d1117")

-- local base0     = hsl("#1b2229")
local base1     = hsl("#1c1f24")
-- local base2     = hsl("#202328")
local base3     = hsl("#23272e")
local base4     = hsl("#3f444a")
local base5     = hsl("#5b6268")
local base6     = hsl("#73797e")
local base7     = hsl("#9ca0a4")
local base8     = hsl("#b1b1b1")
local base9     = hsl("#e6e6e6")

local fold = hsl("#f8e71c")
local accent = blue
local special = {
	red =    hsl("#ff6c6b"),
	yellow = hsl("#f2c68a"),
	green =  hsl("#95e454"),
	blue =   hsl("#87afff")
}

local git = {
	add = hsl("#36453A"),
	change = hsl("#36453A"),
	text = hsl("#35453B"),
	delete = hsl("#484041")
}

local diag = {
	error = red,
	warning = orange,
	info = blue,
	hint = violet,
	success = green
}
-- }}}

local theme = lush(function()
	return {
		Normal {fg=white, bg=black}, -- normal text

		Comment      {fg=base6, gui="italic"},
		ColorColumn  {bg=base1}, -- used for the columns set with 'colorcolumn'
		Conceal      {bg=base4}, -- placeholder characters substituted for concealed text (see 'conceallevel')
		Cursor       {bg=special.green}, -- character under the cursor
		lCursor      {Cursor}, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
		CursorIM     {bg=special.blue}, -- like Cursor, but used when in IME mode |CursorIM|
		CursorRM     {bg=special.red}, -- like Cursor, but used when in RME mode
		CursorVM     {bg=special.yellow}, -- like Cursor, but used when in RME mode
		Directory    {fg=blue, gui="bold"}, -- directory names (and other special names in listings)
		EndOfBuffer  {fg=base4}, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
		-- TermCursor   {}, -- cursor in a focused terminal
		-- TermCursorNC {}, -- cursor in an unfocused terminal
		VertSplit    {fg=base4}, -- the column separating vertically split windows
		Folded       {fg=fold}, -- line used for closed folds
		FoldColumn   {fg=fold}, -- 'foldcolumn'
		SignColumn   {bg=black}, -- column where |signs| are displayed
		IncSearch    {bg=fold.darken(78), gui="underline", sp=yellow}, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
		-- Substitute   {}, -- |:substitute| replacement text highlighting
		LineNr       {fg=base4}, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
		CursorLineNr {fg=accent}, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
		MatchParen   {fg=accent}, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
		NormalFloat  {Normal}, -- Normal text in floating windows.
		NormalNC     {Normal}, -- normal text in non-current windows
		Pmenu        {bg=base1}, -- Popup menu: normal item.
		PmenuSel     {fg=base1, bg=accent}, -- Popup menu: selected item.
		PmenuSbar    {bg=base4}, -- Popup menu: scrollbar.
		PmenuThumb   {bg=base6}, -- Popup menu: Thumb of the scrollbar.
		Question     {fg=green}, -- |hit-enter| prompt and yes/no questions
		Search       {bg=fold.darken(78)}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
		SpecialKey   {fg=base5, gui="bold"}, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace| SpellBad  Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.  SpellCap  Word that should start with a capital. |spell| Combined with the highlighting used otherwise.  SpellLocal  Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.

		SpellBad    {gui="undercurl", sp=red}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		SpellCap    {gui="undercurl", sp=yellow}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
		SpellRare    {gui="undercurl", sp=magenta}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.

		StatusLine   {fg=base8}, -- status line of current window
		StatusLineNC {StatusLine, fg=base6}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.

		TabLine      {fg=base7, bg=base3}, -- tab pages line, not active tab page label
		TabLineFill  {bg=base1}, -- tab pages line, where there are no labels
		TabLineSel   {fg=accent}, -- tab pages line, active tab page label

		Title        {fg=yellow, gui="bold"}, -- titles for output from ":set all", ":autocmd" etc.
		Visual       {bg=base3.lighten(1)}, -- Visual mode selection
		VisualNOS    {Visual, fg=red}, -- Visual mode selection when vim is "Not Owning the Selection".
		CursorLine   {Visual}, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
		CursorColumn {CursorLine}, -- Screen-column at the cursor, when 'cursorcolumn' is set.
		QuickFixLine {Visual}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
		Whitespace   {fg=base3}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
		NonText      {fg=base6}, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
		-- WildMenu     {}, -- current match in 'wildmenu' completion

		MoreMsg      {fg=green}, -- |more-prompt|
		ModeMsg      {Normal}, -- 'showmode' message (e.g., "-- INSERT -- ")
		MsgArea      {Normal}, -- Area for messages and cmdline
		MsgSeparator {Normal}, -- Separator for scrolled messages, `msgsep` flag of 'display'

		DiffAdd      {bg=git.add}, -- diff mode: Added line |diff.txt|
		DiffChange   {bg=git.change}, -- diff mode: Changed line |diff.txt|
		DiffDelete   {bg=git.delete}, -- diff mode: Deleted line |diff.txt|
		DiffText     {bg=git.text, gui="underline"}, -- diff mode: Changed text within a changed line |diff.txt|

		GitGutterAdd          {fg=green},
		GitGutterChange       {fg=yellow},
		GitGutterDelete       {fg=red},
		GitGutterChangeDelete {fg=orange},

		-- These groups are not listed as default vim groups,
		-- but they are defacto standard group names for syntax highlighting.
		-- commented out groups should chain up to their "preferred" group by
		-- default,
		-- Uncomment and edit if you want more specific syntax highlighting.

		Constant       {fg=green}, -- (preferred) any constant
		String         {fg=green}, --   a string constant: "this is a string"
		Number         {fg=orange}, --   a number constant: 234, 0xff
		Float          {Number}, --    a floating point constant: 2.3e10
		Character      {fg=pink}, --  a character constant: 'c', '\n'
		Boolean        {fg=pink}, --  a boolean constant: TRUE, false

		Identifier     {Normal}, -- (preferred) any variable name
		Function       {fg=blue}, -- function name (also: methods for classes)

		Statement      {fg=blue}, -- (preferred) any statement
		Conditional    {Statement, gui="italic"}, --  if, then, else, endif, switch, etc.
		Repeat         {Conditional}, --   for, do, while, etc.
		Label          {Conditional}, --    case, default, etc.
		Operator       {fg=blue}, -- "sizeof", "+", "*", etc.
		Keyword        {fg=magenta, gui="italic"}, --  any other keyword
		Exception      {fg=red, gui="italic"}, --  try, catch, throw

		PreProc        {fg=magenta}, -- (preferred) generic Preprocessor
		Include        {fg=red, gui="italic"}, --  preprocessor #include
		Define         {fg=magenta}, --   preprocessor #define
		Macro          {fg=teal, gui="italic"}, --    same as Define
		PreCondit      {fg=magenta, gui="bold"}, --  preprocessor #if, #else, #endif, etc.

		Type           {fg=yellow}, -- (preferred) int, long, char, etc.
		StorageClass   {fg=blue}, -- static, register, volatile, etc.
		Structure      {fg=blue}, --  struct, union, enum, etc.
		Typedef        {fg=yellow}, --  A typedef

		Special        {fg=orange}, -- (preferred) any special symbol
		SpecialChar    {fg=yellow, gui="bold"}, --  special character in a constant
		Tag            {fg=pink, gui="underline"}, --    you can use CTRL-] on this
		Delimiter      {Normal}, --  character that needs attention
		SpecialComment {fg=magenta, gui="italic"}, -- special things inside a comment

		Underlined {gui = "underline"}, -- (preferred) text that stands out, HTML links
		Bold       {gui = "bold"},
		Italic     {gui = "italic"},

		-- ("Ignore", below, may be invisible...)
		-- Ignore         {}, -- (preferred) left blank, hidden  |hl-Ignore|

		Error          {fg=diag.error}, -- (preferred) any erroneous construct
		Warning        {fg=diag.warning}, -- (preferred) any warning construct
		Info           {fg=diag.info}, -- (preferred) any info construct
		Hint           {fg=diag.hint}, -- (preferred) any hint construct
		Success        {fg=diag.success}, -- (preferred) any successful construct
		Ignore         {fg=base9},
		Muted          {fg=base7, gui="italic"},
		Debug          {fg=green, gui="italic"}, --    debugging statements

		ErrorMsg       {Error}, -- error messages on the command line
		WarningMsg     {Warning}, -- warning messages
		InfoMsg        {Info}, -- info messages
		HintMsg        {Hint}, -- hint messages
		SuccessMsg     {Success}, -- success messages

		Todo           {fg=yellow, gui="underline"}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

		-- These groups are for the native LSP client. Some other LSP clients may use
		-- these groups, or use their own. Consult your LSP client's documentation.

		LspDiagnosticsDefaultError             {Error}, -- used for "Error" diagnostic text
		LspDiagnosticsDefaultWarning           {Warning}, -- used for "Warning" diagnostic text
		LspDiagnosticsDefaultInformation       {Info}, -- used for "Information" diagnostic text
		LspDiagnosticsDefaultHint              {Hint}, -- used for "Hint" diagnostic text
		LspReferenceText                  {fg=black, bg=red}, -- used for highlighting "text" references
		LspReferenceRead                  {fg=black, bg=red}, -- used for highlighting "read" references
		LspReferenceWrite                 {fg=black, bg=red}, -- used for highlighting "write" references

		LspDiagnosticsUnderline           {Underlined},
		LspDiagnosticsUnderlineError      {Underlined, sp=Error.fg},
		LspDiagnosticsUnderlineInfo       {Underlined, sp=Info.fg},
		LspDiagnosticsUnderlineWarning    {Underlined, sp=Warning.fg},
		LspDiagnosticsUnderlineHint       {Underlined, sp=Hint.fg},

		-- These groups are for the neovim tree-sitter highlights.
		-- As of writing, tree-sitter support is a WIP, group names may change.
		-- By default, most of these groups link to an appropriate Vim group,
		-- TSError -> Error for example, so you do not have to define these unless
		-- you explicitly want to support Treesitter's improved syntax awareness.

		-- Treesitter {{{
		-- TSError              {Error}, -- For syntax/parser errors.
		-- TSPunctDelimiter     {}, -- For delimiters ie: `.`
		-- TSPunctBracket       {}, -- For brackets and parens.
		-- TSPunctSpecial       {}, -- For special punctutation that does not fall in the catagories before.
		-- TSConstant           {}, -- For constants
		-- TSConstBuiltin       {}, -- For constant that are built in the language: `nil` in Lua.
		-- TSConstMacro         {}, -- For constants that are defined by macros: `NULL` in C.
		-- TSString             {}, -- For strings.
		-- TSStringRegex        {}, -- For regexes.
		-- TSStringEscape       {}, -- For escape characters within a string.
		-- TSCharacter          {}, -- For characters.
		-- TSNumber             {}, -- For integers.
		-- TSBoolean            {}, -- For booleans.
		-- TSFloat              {}, -- For floats.
		-- TSFunction           {}, -- For function (calls and definitions).
		-- TSFuncBuiltin        {}, -- For builtin functions: `table.insert` in Lua.
		-- TSFuncMacro          {}, -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
		TSParameter          {fg=teal, gui="italic"}, -- For parameters of a function.
		-- TSParameterReference {}, -- For references to parameters of a function.
		-- TSMethod             {}, -- For method calls and definitions.
		-- TSField              {}, -- For fields.
		-- TSProperty           {}, -- Same as `TSField`.
		-- TSConstructor        {}, -- For constructor calls and definitions: `{}` in Lua, and Java constructors.
		-- TSConditional        {}, -- For keywords related to conditionnals.
		-- TSRepeat             {}, -- For keywords related to loops.
		-- TSLabel              {}, -- For labels: `label:` in C and `:label:` in Lua.
		-- TSOperator           {}, -- For any operator: `+`, but also `->` and `*` in C.
		-- TSKeyword            {}, -- For keywords that don't fall in previous categories.
		-- TSKeywordFunction    {}, -- For keywords used to define a fuction.
		-- TSException          {}, -- For exception related keywords.
		-- TSType               {}, -- For types.
		-- TSTypeBuiltin        {}, -- For builtin types (you guessed it, right ?).
		-- TSNamespace          {}, -- For identifiers referring to modules and namespaces.
		-- TSInclude            {}, -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
		-- TSAnnotation         {}, -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
		-- TSText               {}, -- For strings considered text in a markup language.
		-- TSStrong             {}, -- For text to be represented with strong.
		-- TSEmphasis           {}, -- For text to be represented with emphasis.
		-- TSUnderline          {}, -- For text to be represented with an underline.
		-- TSTitle              {}, -- Text that is part of a title.
		-- TSLiteral            {}, -- Literal text.
		-- TSURI                {}, -- Any URI like a link or email.
		-- TSVariable           {}, -- Any variable name that does not have another highlight.
		-- TSVariableBuiltin    {}, -- Variable names that are defined by the languages, like `this` or `self`.
		-- }}}

		TabLineSeparator {fg=Normal.bg, bg=TabLineFill.bg},
		TabLineError     {Error},
		TabLineWarning   {Warning},
		TabLineInfo      {Info},
		TabLineHint      {Hint},
		TabLineSuccess   {Success},

		TelescopePreviewBorder {fg=special.yellow},
		TelescopePromptBorder {fg=special.blue},
		TelescopeResultsBorder {fg=special.green},
		TelescopeSelectionCaret {Visual, fg=magenta},
		TelescopePreviewLine {Search},
		TelescopeMatching {IncSearch},
		TelescopePromptPrefix {fg=magenta},

		NvimTreeGitDirty {fg=blue},
		NvimTreeGitStaged {fg=green},
		NvimTreeGitMerge {fg=magenta},
		NvimTreeGitRenamed {fg=orange},
		NvimTreeGitNew {fg=red},
		NvimTreeSpecialFile {gui="bold"},
		NvimTreeFolderIcon {fg=base6},
		NvimTreeIndentMarker {fg=base4},

		QuickScopeCursor {gui="underline bold", sp=special.green},
		QuickScopePrimary {gui="underline bold", sp=special.yellow},
		QuickScopeSecondary {gui="underline bold", sp=special.red},

		IndentGuidesOdd {bg=base1.darken(4)},
		IndentGuidesEven {bg=base1.lighten(2)},
	}
end)

return theme

-- vim: foldmethod=marker foldlevel=0
