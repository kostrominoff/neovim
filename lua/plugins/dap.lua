
local widgets = require("dap.ui.widgets")
local sidebar = widgets.sidebar(widgets.scopes)

local keymap = vim.keymap
keymap.set("n", "<leader>db", ":DapToggleBreakpoint<CR>")
keymap.set("n", "<leader>dc", ":DapContinue<CR>")
keymap.set("n", "<leader>du", sidebar.toggle)
