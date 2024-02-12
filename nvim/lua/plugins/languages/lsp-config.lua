return {
  "neovim/nvim-lspconfig",
  config = function()
    local on_attach = function(_,bufnr)
      vim.keymap.set('n','<leader>rn',vim.lsp.buf.rename, {})
      vim.keymap.set('n','<leader>ca',vim.lsp.buf.code_action,{})
      vim.keymap.set('n','gd',vim.lsp.buf.definition, {})
      vim.keymap.set('n','gi',vim.lsp.buf.implementation, {})
      -- vim.keymap.set('n','gr', require('telescope.builtin').lsp_references, {})
      vim.keymap.set('n','K', vim.lsp.buf.hover, {})
    --inicializando os servidores
    end
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    local lsp = require("lspconfig")
    require("neodev").setup({})
    lsp.lua_ls.setup{
      on_attach = on_attach,
      capabilities = capabilities,
      settings = {
        Lua = {
          completion = {
            callSnippet = "Replace"
          },
          diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
          },
        },
      },
    }
    lsp.clangd.setup{
      on_attach = on_attach,
      capabilities = capabilities
    }
    lsp.pyright.setup{
      on_attach = on_attach,
      capabilities = capabilities
    }
    lsp.ast_grep.setup{
       on_attach = on_attach,
       capabilities = capabilities,
    }
    lsp.ast_grep.setup{
      on_attach = on_attach,
      capabilities = capabilities,
    }
  end
}
