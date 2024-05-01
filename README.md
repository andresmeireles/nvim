# Minhas configs

## Customizacoes por projeto

Minha configuração tem o expr habilitado, então um arquivo `.nvim.lua` na raiz do projeto pode ser usado para adicionar configurações adicionais.

## Adicionar linters, formatters e outros.

Essa configuração utiliza none-ls, substituto do null-ls. Esse pacote da acesso há varios formatadores, linters, alguns lsps até.

A configutação dele é feita atraves da função `setup` do arquivo `setup_linters_and_formatters` dentro do arquivo .nvim.lua na raiz do projeto.

Exemplo de uso:

```
local slf = require "actions.setup_linters_and_formatters"

local linters = slf.linters() -- helper que busca os linters
local formatters = slf.formatters() -- helper que buscar os formatadores

slf.setup({
    linters.phpcs.with {
        command = "vendor/bin/phpcs"
    },
    formatters.pint.with {
        command = "vendor/bin/pint"
    },
    formatters.blade_formatter,
})
```

A configuração de cada linter pode ser vista na doc do none-ls.
