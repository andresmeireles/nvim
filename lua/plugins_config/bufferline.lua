require 'bufferline'.setup {
	options = {
		close_command = "Bdelete",
		offsets = {
			{
				-- filetype = "NvimTree",
				filetype = "neo-tree",
				text = "File Explorer",
				separator = true,
				text_align = "left"
			}
		}
	}
}
