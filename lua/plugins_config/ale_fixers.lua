-- config lint https://github.com/dense-analysis/ale#usage-linting
local g = vim.g
local fixers = {}

fixers["*"] = {}

g.ale_fix_on_save = 1
g.ale_fixers = fixers 
