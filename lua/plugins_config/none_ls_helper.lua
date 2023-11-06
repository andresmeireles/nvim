---@meta none_ls_helper
-- none_ls_helper.lua

--- Module to assist in working with null-ls, providing useful functionalities.
---@class none_ls_helper
local null_ls = require 'null-ls'

--- Helper functions and utilities related to null-ls.
local null_ls_helpers = {}

--- Formatter utility from null-ls for code formatting.
null_ls_helpers.formatter = null_ls.builtins.formatting

--- Diagnostics utility from null-ls for getting code diagnostics.
null_ls_helpers.diagnostics = null_ls.builtins.diagnostics

--- Code actions utility from null-ls for obtaining available code actions.
null_ls_helpers.code_actions = null_ls.builtins.code_actions

--- Reference to the null-ls module itself.
null_ls_helpers.null_ls = null_ls

--- Register a new built-in function with null-ls.
---@param builtin string The name of the built-in to register.
null_ls_helpers.register = function(builtin)
	null_ls_helpers.null_ls.register(builtin)
end

return null_ls_helpers

