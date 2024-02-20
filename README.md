# Minhas configs

## Customizacoes por projeto

Minha configuração tem o expr habilitado, então um arquivo `.nvim.lua` na raiz do projeto pode ser usado para adicionar configurações adicionais.

## Adicionar linters

Uso o `nvim_lint` para executar linters a configuração de cada linter pode ser feita no arquivo `.nvim.lua`

```
require("lint").linters_by_ft = {
    php = {"phpcs", "linter_qualquer"},
    go = {"linters_do_go"},
    ....
}
```

## Adicionar fomatadores

Uso o `conform.nvim` para adicionar formatadores, sua aplicacao é bastante similar a adicionar linters.

No arquivo '.nvim.lua' adicione o seguinte

```
require("conform").formatters_by_ft = {
    extensao_do_arquivo = {formatadores}
}
```
