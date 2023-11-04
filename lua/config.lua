-- leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- show numbers
vim.wo.number = true

-- enable mouse
vim.o.mouse = 'a'

-- Sync clipboard between OS and neovim, they will share the clipboard
vim.o.clipboard = 'unnamedplus'
vim.wo.signcolumn = 'yes'

-- decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

-- enable exrc
vim.o.exrc = true
vim.o.secure = true

-- hide command bar
vim.o.cmdheight = 0

-- search hightlight on search
-- vim.o.hlsearch = false

vim.o.breakindent = true

-- actions on search
vim.o.ignorecase = true
vim.o.smartcase = true

-- colorscheme
vim.cmd("colorscheme kanagawa-wave")

-- cursor line
vim.opt.cursorline = true
vim.opt.cursorcolumn = false

vim.opt.termguicolors = true
