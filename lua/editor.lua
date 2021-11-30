vim.wo.number = true

vim.opt.termguicolors = true
vim.opt.tabstop       = 4
vim.opt.shiftwidth    = 4
vim.opt.softtabstop   = 4
vim.opt.expandtab     = true

-- identation
vim.opt.autoindent  = true
vim.bo.smartindent = true
vim.bo.copyindent  = true

-- this option is from nvim-cursor line
vim.g.cursorline_timeout = 400
vim.g.cursorword_highlight = false
-- vim.opt.cursorline = true

-- mouse support
vim.opt.mouse = 'a'

-- global clipboard
local options = {noremap = true, silent = true} 
vim.api.nvim_set_keymap('n', "<leader>Y", '"+yg_', options)
vim.api.nvim_set_keymap('v', "<leader>Y", '"+yg_', options)

