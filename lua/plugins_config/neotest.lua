local jest = require "neotest-jest" ({
	jestCommand = "npm test --",
	env = { CI = true },
	cwd = function(path)
		return vim.fn.getcwd()
	end
})

local neotest_ns = vim.api.nvim_create_namespace("neotest")
vim.diagnostic.config(
	{
		virtual_text = {
			format = function(diagnostic)
				return diagnostic.message:gsub("\n", " "):gsub("\t", " "):sub("%s+", " "):gsub("^%s+", "")
			end
		}
	},
	neotest_ns
)

require "neotest".setup {
	adapters = {
		jest,
		require("neotest-go"),
		require("neotest-phpunit")
	}
}
