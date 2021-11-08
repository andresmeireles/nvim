local api = vim.api
local options = {noremap = true, silent = true}

require "nvim-tree".setup {
  auto_close = true
}

api.nvim_set_keymap('n', "<C-b>", ':NvimTreeToggle<CR>', options)
