require("transparent").setup({})
if vim.g.neovide then
require("gruvbox").setup({
  transparent_mode = false
})
vim.cmd("TransparentDisable")
else
require("gruvbox").setup({
  transparent_mode = true
})
vim.cmd("TransparentEnable")
end

vim.opt.termguicolors = true

vim.cmd.colorscheme("gruvbox")
vim.cmd("highlight SignColumn ctermbg=NONE guibg=NONE")
