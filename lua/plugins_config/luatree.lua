local api = vim.api
local options = {noremap = true, silent = true}
local size = 30

require "nvim-tree".setup {
  auto_close = true
}

function increase()
  local file = vim.fn.expand('%')
  if file == "NvimTree" then
    size = size + 10
    local cmd = ":vertical res " .. size
    vim.cmd(cmd)
  end
end

function decrease()
  local file = vim.fn.expand('%')
  if file == "NvimTree" then
    size = size - 10
    local cmd = ":vertical res " .. size
    vim.cmd(cmd)
  end
end

api.nvim_set_keymap('n', "<C-b>", '<cmd>:lua require"plugins_config.tree".toggle()<CR>', options)

api.nvim_set_keymap('n', '=', ':lua increase()<CR>', options)
api.nvim_set_keymap('n', '+', ':lua increase()<CR>', options)
api.nvim_set_keymap('n', '-', ':lua decrease()<CR>', options)
