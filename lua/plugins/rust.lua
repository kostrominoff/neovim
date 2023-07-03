local rt = require("rust-tools")

vim.g.rustfmt_autosave = 1

local mason_registry = require("mason-registry")
local codelldb_root = mason_registry.get_package("codelldb"):get_install_path() .. "/extension/"
local codelldb_path = codelldb_root .. "adapter/codelldb"
local liblldb_path = codelldb_root .. "lldb/lib/liblldb.so"

rt.setup({
  server = {
    standalone = true,
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
    checkOnSave = {
      allFeatures = true,
      -- overrideCommand = {
      --   "cargo",
      --   "clippy",
      --   "--workspace",
      --   "--message-format=json",
      --   "--all-targets",
      --   "--all-features",
      -- },
    },
  },
  dap = { adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path) },
})

require('crates').setup {
    null_ls = {
        enabled = true,
        name = "crates.nvim",
    },
}
