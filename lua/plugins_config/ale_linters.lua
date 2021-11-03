local g = vim.g
local linters = {}

linters["php"] = {"phpstan"}

g.ale_linters = linters
