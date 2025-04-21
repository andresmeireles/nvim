local helper = {}
local extra = {
	silent = true,
	noremap = true,
	expr = false,
	buffer = nil
}

helper.map = function (mode, keymap, command, options)
	vim.keymap.set(mode, keymap, command, options)
end

helper.insert_map = function (keymap, command)
	helper.map('i', keymap, command, extra)
end

helper.normal_map = function (keymap, command)
	helper.map('n', keymap, command, extra)
end

return helper
