return function()
	local relative = vim.wo.relativenumber

	vim.wo.relativenumber = not relative
end
