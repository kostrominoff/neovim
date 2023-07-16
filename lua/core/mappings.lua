local keymap = vim.keymap

keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>h", ":nohlsearch<CR>")
keymap.set("i", "jj", "<Esc>")
keymap.set("n", "<C-a>", "gg<S-v>G")
keymap.set("n", "<leader>q", ":q<CR>")
keymap.set("n", "-", ":Neotree float toggle<CR>")

keymap.set("n", "<A-j>", ":m .+1<CR>==")
keymap.set("n", "<A-k>", ":m .-2<CR>==")
keymap.set("v", "<A-j>", ":m '>+1<CR>gv-gv")
keymap.set("v", "<A-k>", ":m '<-2<CR>gv-gv")

keymap.set("n", "|", ":vsplit<CR>")
keymap.set("n", "\\", ":split<CR>")

keymap.set("n", "<c-k>", ":wincmd k<CR>")
keymap.set("n", "<c-j>", ":wincmd j<CR>")
keymap.set("n", "<c-h>", ":wincmd h<CR>")
keymap.set("n", "<c-l>", ":wincmd l<CR>")
