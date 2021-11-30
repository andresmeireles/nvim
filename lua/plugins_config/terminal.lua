require'toggleterm'.setup {}

local options = {noremap = true, silent = true}
vim.api.nvim_set_keymap('n', '<leader>t', ':ToggleTerm <CR>', options)
vim.api.nvim_set_keymap('i', '<leader>t', '<esc>:ToggleTerm <CR>', options)

