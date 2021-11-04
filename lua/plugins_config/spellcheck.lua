local g = vim.g
local api = vim.api

-- enable spelunker
g.enable_spelunker_vim = 1

-- spell dicts
api.nvim_set_option("spelllang", "en_us,pt")

-- disable vim spellcheck
vim.cmd [[ set nospell ]]
