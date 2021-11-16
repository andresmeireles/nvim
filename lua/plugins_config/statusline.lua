vim.cmd [[set noshowmode]]

require "lualine".setup {
    sections = {
        lualine_c = {
        'lsp_progress'
        }
    }
}
