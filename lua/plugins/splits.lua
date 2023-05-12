local keymap = vim.keymap

local ss = require("smart-splits")

keymap.set("n", "<s-h>", ss.resize_left)
keymap.set("n", "<s-j>", ss.resize_down)
keymap.set("n", "<s-k>", ss.resize_up)
keymap.set("n", "<s-l>", ss.resize_right)
