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
