-- lint configurarion
-- you'll need https://github.com/mattn/efm-langserver and lspconfig https://github.com/neovim/nvim-lspconfig

require "lspconfig".efm.setup {
  init_options = {documentFormatting = true},
  settings = {
    rootMarkers = {".git/"},
    languages = {
      php = {formatCommand = "php -l", formatStdin = true}
    }
  }
}

