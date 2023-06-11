require("transparent").setup({})
require("gruvbox").setup({
  transparent_mode = true
})

vim.opt.termguicolors = true

vim.cmd.colorscheme("gruvbox")
vim.cmd("highlight SignColumn ctermbg=NONE guibg=NONE")
vim.cmd("TransparentEnable")
