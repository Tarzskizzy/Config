return {
  'hrsh7th/nvim-cmp',
  dependencies = {'hrsh7th/cmp-nvim-lsp','hrsh7th/cmp-path','hrsh7th/cmp-buffer','saadparwaiz1/cmp_luasnip','L3MON4D3/LuaSnip',"rafamadriz/friendly-snippets"},
  config = function()
    local cmp = require("cmp")
    require("luasnip.loaders.from_vscode").lazy_load()
    local lspkind = require("lspkind")
    cmp.setup({
      snippet = {
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end
      },
      window = {
        -- completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
      },
      formatting = {
        expandable_indicator = true,
        fields = { cmp.ItemField.Abbr, cmp.ItemField.Kind },
        format = function(entry,vim_item)
          vim_item.kind = string.format("%s %s", lspkind.presets.default[vim_item.kind], vim_item.kind)
          return vim_item
        end
      },
      mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-j>'] = cmp.mapping.scroll_docs(1),
        ['<C-k>'] = cmp.mapping.scroll_docs(-1),
        ['<Enter>'] = cmp.mapping.confirm({select = true})
      }),
      sources = cmp.config.sources({
        { name = 'nvim_lsp'},
        { name = 'luasnip'},
      }, {
        { name = 'buffer'},
        { name = 'path',
          option = {
            -- Options go into this table
          },
        },
      }),
    })
  end
}
