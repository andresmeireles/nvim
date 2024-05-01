local nls = require"null-ls"

local M = {}

M.linters = function ()
	return nls.builtins.diagnostics
end

M.formatters = function () 
	return nls.builtins.formatting
end

M.setup = function(linter_and_formatters)
	local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
	nls.setup({
		sources = linter_and_formatters,
		on_attach = function(client, bufnr)
			if client.supports_method("textDocument/formatting") then
				vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
				vim.api.nvim_create_autocmd("BufWritePre", {
					group = augroup,
					buffer = bufnr,
					callback = function()
						-- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
						-- on later neovim version, you should use vim.lsp.buf.format({ async = false }) instead
						vim.lsp.buf.format({ async = false })
						-- vim.lsp.buf.formatting_sync()
					end,
				})
			end
		end,
	})
end

return M
