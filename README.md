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

<!-- ## Adicionar fomatadores

Para adicionar um formatador especifico sao necessarios passos extras.

```
local nls = require "plugins_config.none_ls_helper"
local formatter_helper = require "plugins_config.formatter_helper"
local formatter = nls.diagnostics

nls.register(formatter.NOME_DO_FORMATTER)

formatter_heper.enable = true
formatter_helper.add_format("EXTENSAO_DO_ARQUIVO")
formatter_helper.setup()
``` -->
