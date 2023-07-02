local wk = require("which-key")

wk.register({
	f = {
		name = "Find",
		f = { "Find file" },
		b = { "Find buffer" },
		h = { "Find help" },
		w = { "Find text" },
		t = { "Find todo" },
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
		s = { "Symbols" },
	},
	g = {
		name = "Git",
		b = { "Branches" },
		c = { "Commits" },
		s = { "Status" },
		g = { "Lazygit" },
	},
  d = {
    name = "Debugger",
    b = { "Toggle breakpoint" },
    c = { "Continue" },
    u = { "Toggle UI" },
  },
	["/"] = { "Toggle comment" },
}, {
	prefix = "<leader>",
})
