-- disable coc autocomple suggestions
vim.cmd [[let b:coc_suggest_disable = 1]]
vim.api.nvim_set_keymap('n', '<leader>a', ":CocAction<CR>", { noremap = true, silent = true })

