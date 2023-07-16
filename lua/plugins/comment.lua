require("nvim_comment").setup({
	hook = function()
		require("ts_context_commentstring.internal").update_commentstring()
	end,
})

vim.keymap.set({ "n", "v" }, "<leader>/", ":CommentToggle<CR>")
