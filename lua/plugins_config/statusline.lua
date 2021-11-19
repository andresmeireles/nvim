vim.cmd [[set noshowmode]]

require "lualine".setup {
    sections = {
        lualine_c = {
        'lsp_progress'
        }
    },
    optioons = {
        -- theme = 'tokyonight'
        -- theme = 'nord'
        -- theme = 'github'
        -- theme = 'neon'
        -- theme = 'onedark'
        -- theme = 'calvera-nvim'
        -- theme = "nightfox"
        -- theme = 'onenord'
    }
}
