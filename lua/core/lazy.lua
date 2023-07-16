local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  { "folke/which-key.nvim" },
  { "folke/neodev.nvim" },
  { "neovim/nvim-lspconfig" },
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "saadparwaiz1/cmp_luasnip" },
  { "L3MON4D3/LuaSnip", dependencies = { "rafamadriz/friendly-snippets" }, },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "ellisonleao/gruvbox.nvim",                   priority = 1000 },
  { "xiyaowong/transparent.nvim" },
  { "nvim-treesitter/nvim-treesitter" },
  { "nvim-treesitter/nvim-treesitter-textobjects" },
  { 'nvim-telescope/telescope.nvim',              version = '*',  dependencies = { 'nvim-lua/plenary.nvim' } },
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    -- NOTE: If you have trouble with this installation, refer to the README for telescope-fzf-native.
    build = 'make',
  },
  {
    "jay-babu/mason-null-ls.nvim",
    event = { "BufWritePre", "BufNewFile" },
  },
  { "jose-elias-alvarez/null-ls.nvim" },
  {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v2.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
	},
  { "lewis6991/gitsigns.nvim", opts = {} },
  { "nvim-lualine/lualine.nvim" },
  { "simrat39/rust-tools.nvim" },
  { "terrortylor/nvim-comment" },
  { "JoosepAlviste/nvim-ts-context-commentstring" },
  { "Saecki/crates.nvim" },
  { "rcarriga/nvim-dap-ui" },
  { "mfussenegger/nvim-dap" },
  { "rust-lang/rust.vim" },
  -- { "onsails/lspkind.nvim" },
  { "tpope/vim-surround" },
  { "windwp/nvim-autopairs", opts = {}},
	{ "windwp/nvim-ts-autotag", opts = {}},
})
