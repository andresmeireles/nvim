vim.cmd [[set noshowmode]]

require "lualine".setup {
    sections = {
        lualine_c = {
            {
                'filename',
                file_status = true, -- displays file status (readonly status, modified status)
                path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
            }
        },
        lualine_d = {
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
