require("mason").setup()
local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
	ensure_installed = { "lua_ls", "tsserver", "emmet_ls", "cssls", "cssmodules_ls", "html" },
	automatic_installation = true,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()
require("mason-lspconfig").setup_handlers({
	function(server_name) -- default handler (optional)
		require("lspconfig")[server_name].setup({
			capabilities = capabilities,
		})
	end,
})

require("null-ls").setup({
	sources = {
		require("typescript.extensions.null-ls.code-actions"),
	},
	on_attach = function()
		vim.api.nvim_create_autocmd("BufWritePost", {
			callback = function()
				vim.lsp.buf.format()
			end,
		})
	end,
})

require("mason-null-ls").setup({
	ensure_installed = {
		"prettierd",
		"eslint_d",
	},
	automatic_installation = true,
	handlers = {},
})
