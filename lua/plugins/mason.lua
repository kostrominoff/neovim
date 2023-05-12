require("mason").setup()
local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
  ensure_installed = { "lua_ls", "tsserver", "emmet_ls", "cssls", "cssmodules_ls", "html" },
  automatic_installation = true,
})

require("mason-lspconfig").setup_handlers({
  function(server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup({})
  end,
})

require("null-ls").setup({
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({
            bufnr = bufnr,
            filter = function(client)
              return client.name == "null-ls"
            end
          })
          -- vim.lsp.buf.formatting_sync()
        end,
      })
    end
  end,
})
require("mason-null-ls").setup({
  ensure_installed = {
    "prettierd", "eslint_d"
  },
  automatic_installation = true,
  handlers = {},
})
