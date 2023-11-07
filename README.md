# Minhas configs

## Customizacoes por projeto

Minha configuracao tem o expr habilitado, entao um arquivo .nvim.lua na raiz do projeto pode ser usado para adicionar configuracoes adicionais.

## Adicionar linters

Para adicionar um linter especifico adicione ao arquivo .nvim.lua na raiz do projeto.

Minha configuracao usar o none_ls (replace do null_ls como mecanismo de linter)

```
local nls = require "plugins_config.none_ls_helper"
local diagnostics = nls.diagnostics

nls.register(diagnostics.NOME_DO_LINTER)
```

## Adicionar fomatadores

Para adicionar um formatador especifico sao necessarios passos extras.

```
local nls = require "plugins_config.none_ls_helper"
local formatter_helper = require "plugins_config.formatter_helper"
local formatter = nls.diagnostics

nls.register(formatter.NOME_DO_FORMATTER)

formatter_heper.enable = true
formatter_helper.add_format("EXTENSAO_DO_ARQUIVO")
formatter_helper.setup()
```
