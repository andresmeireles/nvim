local helper = {}

helper.enable = false

local formats = {}

helper.add_format = function(format_name)
	table.insert(formats, format_name)
end

helper.setup = function()
	local augroup = vim.api.nvim_create_augroup("Formatting", {})

	local f = {}

	for _, format in ipairs(formats) do
		table.insert(f, "*." .. format)
	end

	if helper.enable then
		vim.api.nvim_create_autocmd("BufWritePre", {
			group = augroup,
			pattern = f,
			callback = function()
				vim.lsp.buf.format({ async = false })
			end
		})
	end
end

return helper
