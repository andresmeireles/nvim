local lsp_name = function()
  local clients = vim.lsp.get_active_clients()

  if next(clients) == nil then
    return ""
  end

  return clients[1].name
end

local all_lsps = function()
  local clients = vim.lsp.get_active_clients()

  if next(clients) == nil then
    return ""
  end

  local lsps = "["

  for k, c in pairs(clients) do
    if k ~= 1 then
      lsps = lsps .. " " .. c.name

      if #clients ~= k then
        lsps = lsps .. ","
      end
    end
  end

  lsps = lsps .. " ]"

  return lsps
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
    lualine_x = { { all_lsps } },
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
