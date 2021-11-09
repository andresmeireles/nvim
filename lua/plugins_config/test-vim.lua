local api = vim.api
local options = {silent = true}
--nmap <silent> t<C-n> :TestNearest<CR>
api.nvim_set_keymap('n', 't<C-n>', ':TestNearest<CR>', options)
--nmap <silent> t<C-f> :TestFile<CR>
api.nvim_set_keymap('n', 't<C-f>', ':TestFile<CR>', options)
--nmap <silent> t<C-s> :TestSuite<CR>
api.nvim_set_keymap('n', 't<C-s>', ':TestSuite<CR>', options)
--nmap <silent> t<C-l> :TestLast<CR>
api.nvim_set_keymap('n', 't<C-l>', ':TestLast<CR>', options)
api.nvim_set_keymap('n', 't<C-g>', ':TestVisit<CR>', options)
--map <silent> t<C-g> :TestVisit<CR>
