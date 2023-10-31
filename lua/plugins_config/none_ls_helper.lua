local null_ls = require 'null-ls'

local null_ls_helpers = {}

null_ls_helpers.formatter = null_ls.builtins.formatting

null_ls_helpers.diagnostics = null_ls.builtins.diagnostics

null_ls_helpers.code_actions = null_ls.builtins.code_actions

null_ls_helpers.null_ls = null_ls

null_ls_helpers.register = function (builtin)
	null_ls_helpers.null_ls.register(builtin)
end

return null_ls_helpers
