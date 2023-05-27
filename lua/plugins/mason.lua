require("mason").setup()
local mason_lspconfig = require("mason-lspconfig")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

mason_lspconfig.setup({
	ensure_installed = { "lua_ls", "tsserver", "emmet_ls", "cssls", "cssmodules_ls", "html", "eslint" },
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

local null_ls = require("null-ls")

null_ls.setup({
	sources = {},
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
						end,
					})
				end,
			})
		end
	end,
})

require("mason-null-ls").setup({
	ensure_installed = {
		"eslint_d",
		"prettierd",
	},
	automatic_installation = true,
	handlers = {},
})
