local lsp_name = function()
  local clients = vim.lsp.get_active_clients()

  if next(clients) == nil then
    return ""
  end

  return clients[1].name
end

-- this function only works with gitsigns installed
local git_line_blame = function()
  return require "gitblame".get_current_blame_text()
end

require('lualine').setup {
  options = {
    disabled_filetypes = { "neo-tree" },
    component_separators = '|',
  },
  sections = {
    lualine_a = { 'mode' },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'diagnostics', 'fileformat' },
    lualine_x = { { git_line_blame } },
    lualine_y = {
      {
        lsp_name,
        icon = ' ',
      }
    },
    lualine_z = { 'filetype', 'location', 'progress' },
  },
  inactive_sections = {
    lualine_a = { },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
