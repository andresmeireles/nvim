vim.cmd [[ set nospell ]]
vim.cmd [[ set spelllang=en_us,pt_br ]]

vim.api.nvim_set_keymap('n', '<leader>a', '<Plug>(coc-codeaction-selected)', { noremap = true, silent = true })

local correcto = "feijão, bolsa, ninja, idiota, índice, carrow"


local espelhoAzul = "feijao_verde"
--require "spellsitter".setup()
