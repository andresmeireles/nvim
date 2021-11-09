require 'plugins'
require 'theme'
require 'editor'
require 'plugins_autoload'
require 'lsp'
require 'lsp.autoload'

local file = vim.cmd [[ echo @% ]]
print(file)
