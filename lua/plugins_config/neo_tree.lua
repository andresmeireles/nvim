require "neo-tree".setup {
	close_if_last_window = true,
	filesystem = {
		filtered_items = {
			visible = true, -- This is what you want: If you set this to `true`, all "hide" just mean "dimmed out"
			hide_dotfiles = false,
			hide_gitignored = true,
		},
	}
}

local au = vim.api.nvim_create_augroup("CLOSE_IF_ONLY_OPEN", {})

vim.api.nvim_create_autocmd("BufDelete", {
	group = au,
	pattern = "*",
	callback = function()
		local open_bufs = #vim.fn.getbufinfo({ buflisted = 1 })

		for _, v in pairs(vim.fn.getbufinfo()) do
			print(v)
			for _, i in pairs(v) do
				print(i)
			end
		end

		if open_bufs == 0 then
			vim.cmd("qa")
		end
	end
})
