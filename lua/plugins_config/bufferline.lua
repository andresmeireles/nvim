require 'bufferline'.setup {
	options = {
		close_command = "Bdelete",
		offsets = {
			{
				filetype = "NvimTree",
				text = "File Explorer",
				separator = true,
				text_align = "left"
			}
		}
	}
}
