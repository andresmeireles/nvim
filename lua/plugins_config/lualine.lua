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
    -- disabled_filetypes = { "NvimTree" },
    disabled_filetypes = { "neo-tree" },
    -- theme = bubbles_theme,
    theme = "jellybeans",
    component_separators = '|',
    -- section_separators = { left = '', right = '' },
  },
  sections = {
    lualine_a = {
      -- { 'mode', separator = { left = '' }, right_padding = 2 },
    },
    lualine_b = { 'filename', 'branch' },
    lualine_c = { 'fileformat' },
    lualine_x = { { git_line_blame } },
    lualine_y = {
      {
        lsp_name,
        icon = ' ',
        -- color = { fg = "#000000", gui = "bold" }
      }
    },
    lualine_z = { 'filetype', 'progress' },
    -- lualine_y = {
    --   -- { 'location', separator = { right = '' }, left_padding = 2 },
    -- },
  },
  inactive_sections = {
    lualine_a = { 'filename' },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { 'location' },
  },
  tabline = {},
  extensions = {},
}
