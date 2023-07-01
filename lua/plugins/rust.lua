local rt = require("rust-tools")

vim.g.rustfmt_autosave = 1

rt.setup({
  server = {
    capabilities = require("cmp_nvim_lsp").default_capabilities()
  },
})

require('crates').setup {
    null_ls = {
        enabled = true,
        name = "crates.nvim",
    },
}
