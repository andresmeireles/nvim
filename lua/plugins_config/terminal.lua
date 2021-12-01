require'toggleterm'.setup {}

local options = {noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<leader>T', ':ToggleTerm <CR>', options)
vim.api.nvim_set_keymap('i', '<leader>T', '<esc>:ToggleTerm <CR>', options)

