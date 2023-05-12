local keymap = vim.keymap
local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, {})
keymap.set("n", "<leader>fw", builtin.live_grep, {})
keymap.set("n", "<leader>fb", builtin.buffers, {})
keymap.set("n", "<leader>fh", builtin.help_tags, {})
keymap.set("n", "*", builtin.grep_string, {})
keymap.set("n", "<leader>gb", builtin.git_branches, {})
keymap.set("n", "<leader>gc", builtin.git_commits, {})
keymap.set("n", "<leader>gs", builtin.git_status, {})
keymap.set("n", "<leader>ls", builtin.lsp_document_symbols, {})
keymap.set("n", "gr", builtin.lsp_references, { noremap = true, silent = true })
keymap.set("n", "gd", builtin.lsp_definitions, { noremap = true, silent = true })

require("telescope").setup({
	pickers = {
		buffers = {
			theme = "dropdown",
		},
		find_files = {
			layout_strategy = "horizontal",
			layout_config = {
				preview_width = 0.6,
			},
		},
	},
})
