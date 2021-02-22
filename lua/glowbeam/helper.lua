local M = {}

function M.setup()
	local lush = require("lush")
	vim.cmd("autocmd BufWritePost * lua require('glowbeam.helper').compile()")
	lush.ify()
	vim.cmd("colorscheme glowbeam")
end

function M.compile()
	local glowbeam = require("glowbeam")
	local lush = require("lush")
	local text = lush.stringify(glowbeam)
	vim.fn.writefile(vim.split(text, "\n"), "colors/glowbeam.vim")
end

return M
