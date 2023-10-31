local helper = require 'plugins_config.none_ls_helper'
local nullls = helper.null_ls

nullls.setup({
	on_attach = function (client, bufnr)
		
	end
})

				nullls.disable {}

nullls.reset_sources()

helper.register(helper.formatter.stylua)
