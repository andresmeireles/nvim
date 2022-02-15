local g = vim.g

g.ale_disable_lsp = 1
g.ale_sign_error = ''
g.ale_sign_warning = ''
g.ale_float_preview = 1
g.ale_sign_column_always = 1
g.ale_open_list = 1
g.ale_lint_on_enter = 1
g.ale_set_balloons = 1
g.ale_warn_about_trailing_whitespace = 0

vim.cmd [[ let g:ale_list_window_size = 0 ]]

g.ale_floating_window_border = {'│', '─', '╭', '╮', '╯', '╰'}
