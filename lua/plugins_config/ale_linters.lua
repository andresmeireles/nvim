local g = vim.g
local linters = {}
local igored_linters = {}

igored_linters = {'cspell'}
linters["php"] = {"phpstan", "psalm", "phpmd"}

-- PHP LINTERS
-- PHPSTAN
g.ale_php_phpstan_executable = "./vendor/bin/phpstan"
g.ale_php_phpstan_configuration = "./phpstan.neon"
g.ale_php_phpstan_memory_limit = "512M"
-- psalm

g.ale_linters = linters
g.ale_linters_ignore = igored_linters
