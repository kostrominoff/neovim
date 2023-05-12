vim.opt.termguicolors = true

vim.cmd.colorscheme("catppuccin-macchiato")
vim.cmd("TransparentEnable")

require("catppuccin").setup({
  transparent_background = true
})

vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = '#5b6078' })
vim.api.nvim_set_hl(0, 'LineNr', { fg = '#cad3f5' })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = '#5b6078' })
