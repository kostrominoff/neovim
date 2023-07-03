local mason_registry = require("mason-registry")

local dap, dapui = require("dap"), require("dapui")
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

local codelldb_root = mason_registry.get_package("codelldb"):get_install_path() .. "/extension/"
local codelldb_path = codelldb_root .. "adapter/codelldb"
local liblldb_path = codelldb_root .. "lldb/lib/liblldb.so"

dap.adapters.rust = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)

local keymap = vim.keymap
keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
keymap.set("n", "<leader>dc", ":DapContinue<CR>")
keymap.set("n", "<leader>du", dapui.toggle)
