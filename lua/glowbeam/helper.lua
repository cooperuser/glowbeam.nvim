local M = {}

function M.setup()
	local lush = require("lush")
	vim.cmd("autocmd BufWritePost * lua require('glowbeam.helper').compile()")
	lush.ify()
	vim.cmd("colorscheme glowbeam")
end

function M.compile()
	vim.cmd("echo 'compiling'")
end

return M
