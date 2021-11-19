local g = vim.g
local linters = {}
local igored_linters = {}

igored_linters = {'cspell'}
linters["php"] = {"phpstan"}

g.ale_linters = linters
g.ale_linters_ignore = igored_linters
