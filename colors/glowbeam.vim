lua << EOF

vim.g.colors_name = 'glowbeam'

local TODO = {'#ffffff', 0, ''}

local base0     = {'#1b2229', 0, ''}
local base1     = {'#1c1f24', 0, ''}
local base2     = {'#202328', 0, ''}
local base3     = {'#23272e', 0, ''}
local base4     = {'#3f444a', 0, ''}
local base5     = {'#5b6268', 0, ''}
local base6     = {'#73797e', 0, ''}
local base7     = {'#9ca0a4', 0, ''}
local base8     = {'#b1b1b1', 0, ''}
local base9     = {'#e6e6e6', 0, ''}

local black     = {'#141414', 0, 'black'}
local night     = {'#0f0f0f', 0, 'black'}
local grey      = base4
local red       = {'#ff6c6b', 0, ''}
local orange    = {'#da8548', 0, ''}
local green     = {'#98be65', 0, ''}
local teal      = {'#4db5bd', 0, ''}
local yellow    = {'#ecbe7b', 0, ''}
local blue      = {'#51afef', 0, ''}
local dark_blue = {'#2257A0', 0, ''}
local magenta   = {'#c678dd', 0, ''}
local violet    = {'#a9a1e1', 0, ''}
local cyan      = {'#46D9FF', 0, ''}
local dark_cyan = {'#5699AF', 0, ''}
local white     = {'#efefef', 0, ''}

local accent = blue

local bg = {
	main       = {'#141414', 0, ''},
	alt        = {'#21242b', 0, ''},
	highlight  = {'#242424', 0, ''},
	popup      = {'#3e4556', 0, ''},
	scroll     = base9,
	search     = yellow,
	widget     = main,
	statusline = popup,
	visual     = base3,
	selection  = dark_blue,
	current    = main,
	visible    = main,
	other      = base1,
	status     = base3,
	bufferline = {
		current = main,
		visible = main,
		other = base1
	}
}

local fg = {
	main      = {'#bbc2cf', 0, ''},
	alt       = {'#5b6268', 0, ''},
	fold      = {'#f8e71c', 0, ''},
	widget    = bg.main,
	conceal   = base4,
	subtle    = base1,
	highlight = base0
}

local git = {
	add = {'#36453A', 0, ''},
	change = {'#36453A', 0, ''},
	text = {'#35453B', 0, ''},
	delete = {'#484041', 0, ''}
}

local tag = TODO

-- local BG   = 'bg'
local FG   = 'fg'
-- local NONE = 'NONE'

-- This is the only highlight that must be defined separately.
local highlight_group_normal = {fg=fg.main, bg=bg.main}

-- This is where the rest of your highlights should go.
local highlight_groups = {
	--[[ 4.1. Text Analysis ]]
	Comment     = {fg=base6, style='italic'},
	NonText     = {fg=fg.alt},
	EndOfBuffer = {fg=base4},
	Whitespace  = {fg=fg.subtle},

	--[[ 4.1.1. Literals]]
	Constant  = {fg=green, style='italic'},
	String    = {fg=green},
	Character = {fg=green, style='bold'},
	Number    = {fg=orange},
	Boolean   = {fg=orange, style='italic'},
	Float     = 'Number',

	--[[ 4.1.2. Identifiers]]
	Identifier = {fg=fg.main},
	Function   = {fg=blue},

	--[[ 4.1.3. Syntax]]
	Statement   = {fg=blue},
	Conditional = {fg=blue,      style='italic'},
	Repeat      = {fg=blue,     style='italic'},
	Label       = {fg=blue,     style='italic'},
	Operator    = {fg=blue},
	Keyword     = {fg=magenta, style='italic'},
	Exception   = {fg=red, style='italic'},
	Noise       = 'Comment',

	--[[ 4.1.4. Metatextual Information]]
	PreProc   = {fg=magenta},
	Include   = {fg=red, style='italic'},
	Define    = {fg=magenta},
	Macro     = {fg=dark_cyan, style='italic'},
	PreCondit = {fg=magenta, style='bold'},

	--[[ 4.1.5. Semantics]]
	Type         = {fg=yellow},
	StorageClass = {fg=blue},
	Structure    = {fg=blue},
	Typedef      = {fg=yellow},

	--[[ 4.1.6. Edge Cases]]
	Special        = {fg=orange},
	SpecialChar    = {fg=yellow, style='bold'},
	SpecialKey     = {fg=base4},
	Tag            = {fg=dark_cyan},
	Delimiter      = {fg=fg.main},
	SpecialComment = {fg=base7, style='bold'},

	--[[ 4.1.7. Help Syntax]]
	Underlined        = {fg=dark_cyan, style='underline'},
	Ignore            = {fg=TODO},
	Debug             = {fg=green, style='italic'},
	Info              = {fg=blue, style='italic'},
	Warning           = {fg=orange, style='italic'},
	Error             = {fg=red, style='italic'},
	Success           = {fg=green, style='italic'},
	Muted             = {fg=base7, style='italic'},
	Todo              = {fg=fg.fold, style={'italic'}},
	helpHyperTextJump = 'Underlined',
	helpSpecial       = 'Function',
	Hint              = 'Special',

	--[[ 4.2... Editor UI  ]]
	--[[ 4.2.1. Status Line]]
	StatusLine       = {fg=base8, bg=bg.statusline},
	StatusLineNC     = {fg=base6, bg=bg.statusline},
	StatusLineTerm   = 'StatusLine',
	StatusLineTermNC = 'StatusLineNC',
	StatusLinePart   = 'StatusLine',
	StatusLinePartNC = 'StatusLineNC',

	--[[ 4.2.2. Separators]]
	VertSplit   = {fg=base4},
	TabLine     = {fg=base7, bg=bg.alt},
	TabLineFill = {bg=bg.other},
	TabLineSel  = {fg=blue, bg=bg.current},
	Title       = {fg=fg.fold, style='bold'},

	--[[ 4.2.3. Conditional Line Highlighting]]
	--Conceal={}
	CursorLine      = {bg=night},
	CursorLineNr    = {bg=black, fg=accent},
	debugBreakpoint = 'ErrorMsg',
	debugPC         = 'ColorColumn',
	LineNr          = {fg=base4, bg=bg.widget},
	QuickFixLine    = {bg=bg.visual},
	Visual          = {bg=bg.visual},
	VisualNOS       = {bg=TODO},

	--[[ 4.2.4. Popup Menu]]
	Pmenu      = {fg=fg.main, bg=bg.popup},
	PmenuSbar  = {bg=bg.alt},
	PmenuSel   = {fg=fg.highlight, bg=accent},
	PmenuThumb = {bg=bg.scroll},
	WildMenu   = {fg=fg.main, bg=bg.selection},

	--[[ 4.2.5. Folds]]
	FoldColumn = {bg=BG, fg=fg.fold, style='bold'},
	Folded     = {bg=BG,  fg=fg.fold, style='italic'},

	--[[ 4.2.6. Diffs]]
	DiffAdd    = {bg=git.add},
	DiffChange = {bg=git.change},
	DiffDelete = {bg=git.delete},
	DiffText   = {bg=git.text, style='underline'},

	--[[ 4.2.7. Searching]]
	IncSearch  = {fg=bg.search, style='underline'},
	Search     = {fg=bg.search, style='underline'},
	MatchParen = {fg=red},

	--[[ 4.2.8. Spelling]]
	SpellBad   = {style={'undercurl', color=red}},
	SpellCap   = {style={'undercurl', color=yellow}},
	SpellLocal = {style={'undercurl', color=green}},
	SpellRare  = {style={'undercurl', color=orange}},

	--[[ 4.2.9. Conditional Column Highlighting]]
	ColorColumn = {bg=base1},
	SignColumn  = {bg=bg.widget},

	--[[ 4.2.10. Messages]]
	ErrorMsg   = {fg=red,          style='italic'},
	HintMsg    = {fg=magenta,      style='italic'},
	InfoMsg    = {fg=blue,          style='italic'},
	ModeMsg    = {fg=yellow},
	WarningMsg = {fg=orange, style='italic'},
	Question   = {fg=orange, style='underline'},

	--[[ 4.2.11. LSP ]]
	LspDiagnosticsError = 'Error',
	LspDiagnosticsErrorFloating = 'ErrorMsg',
	LspDiagnosticsErrorSign = 'ErrorMsg',

	LspDiagnosticsWarning = 'Warning',
	LspDiagnosticsWarningFloating = 'WarningMsg',
	LspDiagnosticsWarningSign = 'WarningMsg',

	LspDiagnosticsHint = 'Hint',
	LspDiagnosticsHintFloating = 'HintMsg',
	LspDiagnosticsHintSign = 'HintMsg',

	LspDiagnosticsInformation = 'Info',
	LspDiagnosticsInformationFloating = 'InfoMsg',
	LspDiagnosticsInformationSign = 'InfoMsg',

	LspDiagnosticsUnderline = {style={'undercurl', color=white}},
	LspDiagnosticsUnderlineError = 'CocErrorHighlight',
	LspDiagnosticsUnderlineHint  = 'CocHintHighlight',
	LspDiagnosticsUnderlineInfo  = 'CocInfoHighlight',
	LspDiagnosticsUnderlineWarning = 'CocWarningHighlight',

	--[[ 4.2.12. Cursor ]]
	Cursor   = {style='inverse'},
	CursorIM = 'Cursor',
	CursorColumn = {bg=night},

	--[[ 4.2.13. Misc ]]
	Directory = {fg=ice, style='bold'},

	--[[ 4.3. Programming Languages
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]
	--[[ 4.3.1. C ]]
	cConstant    = 'Constant',
	cCustomClass = 'Type',

	--[[ 4.3.2. C++ ]]
	cppSTLexception = 'Exception',
	cppSTLnamespace = 'String',

	--[[ 4.3.3 C# ]]
	csBraces     = 'Delimiter',
	csClass      = 'Structure',
	csClassType  = 'Type',
	csContextualStatement = 'Conditional',
	csEndColon   = 'Delimiter',
	csGeneric    = 'Typedef',
	csInterpolation = 'Include',
	csInterpolationDelimiter = 'SpecialChar',
	csLogicSymbols  = 'Operator',
	csModifier   = 'Keyword',
	csNew        = 'Operator',
	csNewType    = 'Type',
	csParens     = 'Delimiter',
	csPreCondit  = 'PreProc',
	csRepeat     = 'Repeat',
	csStorage    = 'StorageClass',
	csUnspecifiedStatement = 'Statement',
	csXmlTag     = 'Define',
	csXmlTagName = 'Define',

	--[[ 4.3.4. CSS ]]
	cssBraces     = 'Delimiter',
	cssProp       = 'Keyword',
	cssSelectorOp = 'Operator',
	cssTagName    = 'Type',
	cssTagName    = 'htmlTagName',
	scssAmpersand = 'Special',
	scssAttribute = 'Label',
	scssBoolean   = 'Boolean',
	scssDefault   = 'Keyword',
	scssElse      = 'PreCondit',
	scssIf        = 'PreCondit',
	scssInclude   = 'Include',
	scssSelectorChar = 'Operator',
	scssSelectorName = 'Identifier',
	scssVariable  = 'Define',
	scssVariableAssignment = 'Operator',

	--[[ 4.3.5. Dart ]]
	dartLibrary = 'Statement',

	--[[ 4.3.6. dot ]]
	dotKeyChar = 'Character',
	dotType    = 'Type',

	--[[ 4.3.7. Go ]]
	goBlock                 = 'Delimiter',
	goBoolean               = 'Boolean',
	goBuiltins              = 'Operator',
	goField                 = 'Identifier',
	goFloat                 = 'Float',
	goFormatSpecifier       = 'Character',
	goFunction              = 'Function',
	goFunctionCall          = 'goFunction',
	goFunctionReturn        = {},
	goMethodCall            = 'goFunctionCall',
	goParamType             = 'goReceiverType',
	goPointerOperator       = 'SpecialChar',
	goPredefinedIdentifiers = 'Constant',
	goReceiver              = 'goBlock',
	goReceiverType          = 'goTypeName',
	goSimpleParams          = 'goBlock',
	goType                  = 'Type',
	goTypeConstructor       = 'goFunction',
	goTypeName              = 'Type',
	goVarAssign             = 'Identifier',
	goVarDefs               = 'goVarAssign',

	--[[ 4.3.8. HTML ]]
	htmlArg     = {fg=yellow, style='italic'},
	htmlBold    = {style='bold'},
	htmlTitle   = 'Title',
	htmlEndTag  = 'htmlTag',
	htmlH1      = 'markdownH1',
	htmlH2      = 'markdownH2',
	htmlH3      = 'markdownH3',
	htmlH4      = 'markdownH4',
	htmlH5      = 'markdownH5',
	htmlH6      = 'markdownH6',
	htmlItalic  = {style='italic'},
	htmlSpecialTagName = {fg=magenta},
	htmlTag     = {fg=base6},
	htmlTagN    = 'Typedef',
	htmlTagName = {fg=red},
	htmlLink = {fg=cyan, style={'underline', 'italic'}},

	--[[ 4.3.9. Java ]]
	javaClassDecl = 'Structure',

	--[[ 4.3.10. JavaScript ]]
	jsFuncBlock   = 'Function',
	jsObjectKey   = 'Type',
	jsReturn      = {fg=magenta, style='italic'},
	jsVariableDef = 'Identifier',

	--[[ 4.3.11. JSON ]]
	jsonBraces = 'luaBraces',
	jsonKeywordMatch = 'Operator',
	jsonNull   = 'Constant',
	jsonQuote  = 'Delimiter',
	jsonString = 'String',
	jsonStringSQError = 'Exception',

	--[[ 4.3.12. Lua ]]
	luaBraces       = 'Structure',
	luaBrackets     = 'Delimiter',
	luaBuiltin      = 'Keyword',
	luaComma        = 'Delimiter',
	luaFuncArgName  = 'Identifier',
	luaFuncCall     = 'Function',
	luaFuncId       = 'luaNoise',
	luaFuncKeyword  = 'Type',
	luaFuncName     = 'Function',
	luaFuncParens   = 'Delimiter',
	luaFuncTable    = 'Structure',
	luaLocal        = 'Type',
	luaNoise        = 'Operator',
	luaParens       = 'Delimiter',
	luaSpecialTable = 'StorageClass',
	luaSpecialValue = 'Function',

	--[[ 4.3.12. Make ]]
	makeCommands   = 'Statment',
	makeSpecTarget = 'Type',

	--[[ 4.3.13. Markdown ]]
	markdownH1          = {fg=red, style='bold'},
	markdownH2          = {fg=orange, style='bold'},
	markdownH3          = {fg=yellow, style='bold'},
	markdownH4          = {fg=green, style='bold'},
	markdownH5          = {fg=cyan, style='bold'},
	markdownH6          = {fg=magenta, style='bold'},
	mkdBold             = 'SpecialComment',
	mkdCode             = 'Keyword',
	mkdCodeDelimiter    = 'mkdBold',
	mkdCodeStart        = 'mkdCodeDelimiter',
	mkdCodeEnd          = 'mkdCodeStart',
	mkdHeading          = 'Delimiter',
	mkdItalic           = 'mkdBold',
	mkdListItem         = 'Operator',
	mkdRule             = 'Underlined',
	texMathMatcher      = 'Number',
	texMathZoneX        = 'Number',
	texMathZoneY        = 'Number',

	--[[ 4.3.20. Python ]]
	pythonBrackets        = 'Delimiter',
	pythonBuiltinFunc     = 'Operator',
	pythonBuiltinObj      = 'Type',
	pythonBuiltinType     = 'Type',
	pythonClass           = 'Structure',
	pythonClassParameters = 'pythonParameters',
	pythonDecorator       = 'PreProc',
	pythonDottedName      = 'Identifier',
	pythonError           = 'Error',
	pythonException       = 'Exception',
	pythonInclude         = 'Include',
	pythonIndentError     = 'pythonError',
	pythonLambdaExpr      = 'pythonOperator',
	pythonOperator        = 'Operator',
	pythonParam           = 'Identifier',
	pythonParameters      = 'Delimiter',
	pythonSelf            = 'Statement',
	pythonSpaceError      = 'pythonError',
	pythonStatement       = 'Statement',

	--[[ 4.3.21. Ruby ]]
	rubyClass                  = 'Structure',
	rubyDefine                 = 'Define',
	rubyInterpolationDelimiter = 'Delimiter',

	--[[ 4.3.22. Rust ]]
	rustKeyword   = 'Keyword',
	rustModPath   = 'Include',
	rustScopeDecl = 'Delimiter',
	rustTrait     = 'StorageClass',

	--[[ 4.3.23. Scala ]]
	scalaKeyword        = 'Keyword',
	scalaNameDefinition = 'Identifier',

	--[[ 4.3.24. shell ]]
	shDerefSimple = 'SpecialChar',
	shFunctionKey = 'Function',
	shLoop    = 'Repeat',
	shParen   = 'Delimiter',
	shQuote   = 'Delimiter',
	shSet     = 'Statement',
	shTestOpr = 'Debug',

	--[[ 4.3.25. Solidity ]]
	solBuiltinType  = 'Type',
	solContract     = 'Typedef',
	solContractName = 'Function',

	--[[ 4.3.26. TOML ]]
	tomlComment = 'Comment',
	tomlKey     = 'Label',
	tomlTable   = 'StorageClass',

	--[[ 4.3.27. VimScript ]]
	helpSpecial    = 'Special',
	vimFgBgAttrib  = 'Constant',
	vimHiCterm     = 'Label',
	vimHiCtermFgBg = 'vimHiCterm',
	vimHiGroup     = 'Typedef',
	vimHiGui       = 'vimHiCterm',
	vimHiGuiFgBg   = 'vimHiGui',
	vimHiKeyList   = 'Operator',
	vimOption      = 'Define',
	vimSetEqual    = 'Operator',

	--[[ 4.3.28. XML ]]
	xmlAttrib  = 'htmlArg',
	xmlEndTag  = 'xmlTag',
	xmlEqual   = 'Operator',
	xmlTag     = 'htmlTag',
	xmlTagName = 'htmlTagName',

	--[[ 4.3.29. SQL ]]
	sqlKeyword   = 'Keyword',
	sqlParen     = 'Delimiter',
	sqlSpecial   = 'Constant',
	sqlStatement = 'Statement',
	sqlParenFunc = 'Function',

	--[[ 4.3.30. dos INI ]]
	dosiniHeader = 'Title',

	--[[ 4.3.31. Crontab ]]
	crontabDay  = 'StorageClass',
	crontabDow  = 'String',
	crontabHr   = 'Number',
	crontabMin  = 'Float',
	crontabMnth = 'Structure',

	--[[ 4.3.32. PlantUML ]]
	plantumlColonLine = {},

	--[[ 4.4. Plugins
		Everything in this section is OPTIONAL. Feel free to remove everything
		here if you don't want to define it, or add more if there's something
		missing.
	]]
	--[[ 4.4.1. ALE ]]
	ALEErrorSign   = 'ErrorMsg',
	ALEWarningSign = 'WarningMsg',

	--[[ 4.4.2. coc.nvim ]]
	CocHighlightText    = {bg=base2},
	CocErrorHighlight   = {style={'underline'}},
	CocHintHighlight    = {style={'underline'}},
	CocInfoHighlight    = {style={'underline'}},
	CocWarningHighlight = {style={'underline'}},
	CocErrorSign   = {fg=red},
	CocHintSign    = {fg=magenta},
	CocInfoSign    = {fg=blue},
	CocWarningSign = {fg=orange},
	CocErrorVirtualText = 'ErrorMsg',
	CocHintVirtualText = 'HintMsg',
	CocInfoVirtualText = 'InfoMsg',
	CocWarningVirtualText = 'WarningMsg',
	TablineError = {fg=red, bg=bg.status},
	TablineHint = {fg=magenta, bg=bg.status},
	TablineInfo = {fg=blue, bg=bg.status},
	TablineWarning = {fg=orange, bg=bg.status},
	TablineSuccess = {fg=green, bg=bg.status},
	TablineSeparator = {fg=bg.status, bg=bg.other},
	TablineBlank = {fg=bg.status, bg=bg.main},

	-- Bufferlines
	BufferCurrent    = {fg=base9, bg=bg.current},
	BufferCurrentMod = {fg=yellow, bg=bg.current},
	BufferCurrentSign = {fg=accent, bg=bg.current},
	BufferVisible    = {fg=base8, bg=bg.bufferline.visible},
	BufferVisibleMod = {fg=yellow, bg=bg.bufferline.visible},
	BufferVisibleSign = {fg=base8, bg=bg.bufferline.visible},
	BufferInactive    = {fg=base6, bg=bg.other},
	BufferInactiveMod = {fg=yellow, bg=bg.other},
	BufferInactiveSign = {fg=base4, bg=bg.other},

	-- nvim-tree-lua
	LuaTreeIndentMarker = 'Whitespace',
	LuaTreeFolderIcon = {fg=blue},
	LuaTreeFolderName = {style='nocombine'},
	LuaTreeFileDirty = {fg=yellow, style='italic'},
	LuaTreeGitStaged = {fg=green, style='italic'},
	LuaTreeGitNew = {fg=blue, style='italic'},
	LuaTreeGitMerge = {fg=blue, style='italic'},
	LuaTreeGitRenamed = {fg=red, style='italic'},
	LuaTreeSpecialFile = {fg=fg.fold, style='underline'},
	LuaTreeImageFile = {fg=fg.main},

	--[[ 4.4.2. vim-jumpmotion / vim-easymotion ]]
	EasyMotion = 'IncSearch',
	JumpMotion = 'EasyMotion',

	--[[ 4.4.4. vim-gitgutter / vim-signify ]]
	GitGutterAdd          = {fg=green},
	GitGutterChange       = {fg=yellow},
	GitGutterDelete       = {fg=red},
	GitGutterChangeDelete = {fg=orange},

	SignifySignAdd    = 'GitGutterAdd',
	SignifySignChange = 'GitGutterChange',
	SignifySignDelete = 'GitGutterDelete',
	SignifySignChangeDelete = 'GitGutterChangeDelete',

	--[[ 4.4.5. vim-indent-guides ]]
	IndentGuidesOdd  = {bg=base1},
	IndentGuidesEven = {bg=base2},

	--[[ 4.4.7. NERDTree ]]
	NERDTreeCWD = 'Label',
	NERDTreeUp  = 'Operator',
	NERDTreeDir = 'Directory',
	NERDTreeDirSlash = 'Delimiter',
	NERDTreeOpenable = 'NERDTreeDir',
	NERDTreeClosable = 'NERDTreeOpenable',
	NERDTreeExecFile = 'Function',
	NERDTreeLinkTarget = 'Tag',

	--[[ 4.4.8. nvim-treesitter ]]
	TSConstBuiltin = 'Constant',
	TSConstructor  = 'Typedef',
	TSFuncBuiltin  = 'Function',
	TSStringEscape = 'Character',
	TSStringRegex  = 'SpecialChar',
	TSURI = 'Tag',
	TSVariableBuiltin = 'Keyword',
	TSProperty = {fg=red},
	Parameter = {fg=teal, style='italic'},

	TelescopeMatching = {fg=red, style='underline'}
}

terminal_ansi_colors = {}
-- local terminal_ansi_colors = {
-- 	[0]  = '#000000',
-- 	[1]  = '#fc2c1d',
-- 	[2]  = '#2fcc70',
-- 	[3]  = '#f1c40c',
-- 	[4]  = '#3398db',
-- 	[5]  = '#6170c4',
-- 	[6]  = '#0095de',
-- 	[7]  = '#dee2ea',
-- 	[8]  = '#666666',
-- 	[9] = '#e74b3b',
-- 	[10] = '#07d773',
-- 	[11] = '#f6c700',
-- 	[12] = '#0095de',
-- 	[13] = '#6667c6',
-- 	[14] = '#0092e2',
-- 	[15] = '#ffffff'
-- }

--[[ NOTHING INSIDE THIS FILE NEEDS TO BE EDITED BY THE USER. ]]
local vim = vim

-- Clear the highlighting.
-- vim.cmd('hi clear')

-- Disable automatic coloring for the IndentGuides plugin.
vim.g.indent_guides_auto_colors = 0

-- If the syntax has been enabled, reset it.
if vim.fn.exists('syntax_on') then vim.cmd('syntax reset') end

-- Determine which set of colors to use.
local using_hex_or_256 = tonumber(vim.o.t_Co) >= 256
	or vim.o.termguicolors
	or vim.fn.has('gui_running')
	or string.find(vim.fn.expand('$TERM'), '256')

-- If we aren't using the hex and 256 colorset, then set the &t_Co variable to 16.
if not using_hex_or_256 then vim.o.t_Co = 16 end

-- These are constants for the indexes in the colors that were defined before.
local PALETTE_ANSI = 3
local PALETTE_256  = 2
local PALETTE_HEX  = 1
local NONE = "NONE"

-- Get the color value of a color variable, or "NONE" as a default.
local function get(color, index) -- {{{ †
	if type(color) == 'table' and color[index] then
		return color[index]
	elseif type(color) == 'string' then
		return color
	else
		return NONE
	end
end --}}} ‡

-- Add the 'blend' parameter to some highlight command, if there is one.
local function blend(command, attributes) -- {{{ †
	if attributes.blend then -- There is a value for the `highlight-blend` field.
		command[#command + 1] = ' blend='..attributes.blend
	end
end --}}} ‡

--[[ If using hex and 256-bit colors, then populate the gui* and cterm* args.
	If using 16-bit colors, just populate the cterm* args. ]]
local colorize = using_hex_or_256 and function(command, attributes) -- {{{ †
	command[#command + 1] =
		' ctermbg='..get(attributes.bg, PALETTE_256)
		..' ctermfg='..get(attributes.fg, PALETTE_256)
		..' guibg='..get(attributes.bg, PALETTE_HEX)
		..' guifg='..get(attributes.fg, PALETTE_HEX)
	blend(command, attributes)
end or function(command, attributes)
	command[#command + 1] =
		' ctermbg='..get(attributes.bg, PALETTE_ANSI)
		..' ctermfg='..get(attributes.fg, PALETTE_ANSI)
	blend(command, attributes)
end --}}} ‡

-- This function appends `selected_attributes` to the end of `highlight_cmd`.
local stylize = using_hex_or_256 and function(command, style, color) -- {{{ †
	command[#command + 1] = ' cterm='..style..' gui='..style

	if color then -- There is an undercurl color.
		command[#command + 1] = ' guisp='..get(color, PALETTE_HEX)
	end
end or function(command, style)
	command[#command + 1] = ' cterm='..style
end --}}} ‡

-- Generate a `:highlight` command from a group and some attributes.
local function highlight(highlight_group, attributes) -- {{{ †
	-- The base highlight command
	local highlight_cmd = {'hi! ', highlight_group}

	-- Take care of special instructions for certain background colors.
	if attributes[vim.o.background] then
		attributes.__index = attributes
		attributes = setmetatable(attributes[vim.o.background], attributes)
	end

	-- Determine if there is a highlight link, and if so, assign it.
	local link = (type(attributes) == 'string' and attributes)
		or attributes.link

	if link then -- `highlight_group` is a link to another group.
		highlight_cmd[3] = highlight_cmd[2]..' '
		highlight_cmd[2] = 'link '
		highlight_cmd[4] = link
	else -- The `highlight_group` is uniquely defined.
		colorize(highlight_cmd, attributes)

		local style = attributes.style or NONE
		if type(style) == 'table' then
			-- Concat all of the entries together with a comma between before styling.
			stylize(highlight_cmd, table.concat(style, ','), style.color)
		else -- The style is just a single entry.
			stylize(highlight_cmd, style)
		end
	end

	vim.cmd(table.concat(highlight_cmd))
end --}}} ‡

function setAll(Normal, highlights, terminal_ansi_colors)
	-- Highlight the baseline.
	highlight('Normal', Normal)

	-- Highlight everything else.
	for highlight_group, attributes in pairs(highlights) do
		highlight(highlight_group, attributes)
	end

	-- Set the terminal colors.
	if using_hex_or_256 then for index, color in ipairs(terminal_ansi_colors) do
		vim.g['terminal_color_'..index] = vim.o.termguicolors and color[PALETTE_HEX] or color[PALETTE_256]
	end end
end


setAll( highlight_group_normal, highlight_groups, terminal_ansi_colors)

-- vim: ft=lua

EOF
" lua require("glowbeam_colors")
