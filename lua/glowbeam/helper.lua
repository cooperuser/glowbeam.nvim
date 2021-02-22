local M = {}

function M.setup()
	local lush = require("lush")
	vim.cmd("autocmd BufWritePost * lua require('glowbeam.helper').compile()")
	lush.ify()
	vim.cmd("colorscheme glowbeam")
end

function M.compile()
	local glowbeam = require("lush").stringify(require("glowbeam"))
	local lines = vim.split(glowbeam, "\n")
	local sorted = table.slice(lines, 1, 3)
	local groups = table.slice(lines, 4)
	table.sort(groups, function (a, b) return a:lower() < b:lower() end)
	for _, group in ipairs(groups) do table.insert(sorted, group) end
	vim.fn.writefile(sorted, "colors/glowbeam.vim")
end

return M
