local on_attach = function(_, bufnr)
    local namap = function(keys, func, desc)
	if desc then
	    desc = "LSP: " .. desc
	end

	vim.keymap.set('n', keys, func, { buffer = bufnr, desc = desc })
    end
end

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = {
    lua_ls = {
	Lua = {
	    workspace = { checkThirdParty = false},
	    telemetry = { enable = false }
	}
    }
}

require "neodev".setup {
    library = {
	plugins = {
	    "nvim-dap-ui"
	},
	types = true
    }
}

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup {
  ensure_installed = vim.tbl_keys(servers),
}

mason_lspconfig.setup_handlers {
    function(server_name)
	require("lspconfig")[server_name].setup {
	    capabilities = capabilities,
	    on_attach = on_attach,
	    filetypes = (servers[server_name] or {}).filetypes
	}
    end
}

local cmp = require 'cmp'

local luasnip = require 'luasnip'

require('luasnip.loaders.from_vscode').lazy_load()
luasnip.config.setup {}

cmp.setup {
    snippet = {
	expand = function(args)
	    luasnip.lsp_expand(args.body)
	end
    },
    mapping = cmp.mapping.preset.insert {
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete {},
    ['<CR>'] = cmp.mapping.confirm {
      behavior = cmp.ConfirmBehavior.Replace,
      select = true,
    },
    ['<Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.expand_or_locally_jumpable() then
        luasnip.expand_or_jump()
      else
        fallback()
      end
    end, { 'i', 's' }),
    ['<S-Tab>'] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      elseif luasnip.locally_jumpable(-1) then
        luasnip.jump(-1)
      else
        fallback()
      end
    end, { 'i', 's' }),
    },
    sources = {
	{ name = 'nvim_lsp' },
	{ name = 'luasnip' },
    },
}
