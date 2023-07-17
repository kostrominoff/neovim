require("core.config")
require("core.mappings")
require("core.lazy")
require("core.theme")

require("plugins.lsp")
require("plugins.cmp")
require("plugins.mason")
require("plugins.treesitter")
require("plugins.telescope")
require("plugins.neotree")
require("plugins.lualine")
require("plugins.comment")
require("plugins.rust")
require("plugins.dap")

if vim.g.neovide then
  vim.g.neovide_transparency = 0.85
  vim.o.guifont = "JetBrainsMono_Nerd_Font:h14"
  vim.g.neovide_theme = 'gruvbox'
  vim.g.neovide_refresh_rate = 144
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_underline_automatic_scaling = true
  vim.opt.linespace = 0
  vim.g.neovide_scale_factor = 1.0

  vim.keymap.set('v', '<C-c>', '"+y') -- Copy
  vim.keymap.set('n', '<C-v>', '"+P') -- Paste normal mode
  vim.keymap.set('v', '<C-v>', '"+P') -- Paste visual mode
  vim.keymap.set('c', '<C-v>', '<C-R>+') -- Paste command mode
  vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
end

