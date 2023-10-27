local helper = require 'plugins_config.none_ls_utils'
local nullls = helper.null_ls

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

nullls.setup({
	on_attach = function (client, bufnr)
		
	end
})

				nullls.disable {}

nullls.reset_sources()

helper.register(helper.formatter.stylua)
