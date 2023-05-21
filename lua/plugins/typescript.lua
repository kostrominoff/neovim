require("typescript").setup({
  server = {
    on_attach = function(client)
        client.resolved_capabilities.document_formatting = false
    end,
  }
})

local Format = vim.api.nvim_create_augroup("Format", { clear = true })
vim.api.nvim_create_autocmd("BufWritePre", {
	group = Format,
	pattern = "*.tsx,*.ts,*.jsx,*.js",
	callback = function()
		vim.cmd("TypescriptOrganizeImports")
	end,
})
