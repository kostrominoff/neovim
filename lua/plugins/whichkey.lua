local wk = require("which-key")

wk.register({
	f = {
		name = "Find",
		f = { "Find File" },
		b = { "Find Buffer" },
		h = { "Find Help" },
		w = { "Find Text" },
	},
	h = { "No highlight" },
	q = { "Quit" },
	Q = { "Quit neovim" },
	w = { "Save" },
	c = { "Close buffer" },
	l = {
		name = "LSP",
		d = { "Show current diagnostic" },
		D = { "Buffer diagnostic" },
		r = { "Rename" },
		a = { "Code actions" },
		f = { "Format" },
		s = { "Symbols" },
	},
	g = {
		name = "Git",
		b = { "Branches" },
		c = { "Commits" },
		s = { "Status" },
	},
	["/"] = { "Toggle comment" },
}, {
	prefix = "<leader>",
})
