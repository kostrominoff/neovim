require("typescript").setup({})

local Format = vim.api.nvim_create_augroup("Format", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	group = Format,
	pattern = "*.tsx,*.ts,*.jsx,*.js",
	callback = function()
		vim.cmd("TypescriptRemoveUnused")
		vim.cmd("TypescriptOrganizeImports")
	end,
})
