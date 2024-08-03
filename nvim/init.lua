require("configs_nvim")
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
-- initialazing nvim
vim.cmd("set tgc")

-- require("lazy").setup({
-- 	spec = {
-- 		--{ "LazyVim/LazyVim"}, --import = "lazyvim.plugins" },
-- 		{ import = "plugins.core" },
-- 		{ import = "plugins.languages" },
-- 		{ import = "plugins.themes" },
-- 	},
-- })
local plugins = {
  -- Core Plugins
  "christoomey/vim-tmux-navigator",cmd = {"TmuxNavigateLeft","TmuxNavigateDown","TmuxNavigateUp","TmuxNavigateRight","TmuxNavigatePrevious"},
  "akinsho/bufferline.nvim",
  "norcalli/nvim-colorizer.lua",
  "nvim-tree/nvim-web-devicons",
  "lewis6991/gitsigns.nvim",
  "nvim-lualine/lualine.nvim",
  "windwp/nvim-ts-autotag",
  "onsails/lspkind.nvim",
  "kylechui/nvim-surround",
  "lukas-reineke/indent-blankline.nvim",
  {"iamcco/markdown-preview.nvim", cmd = {"MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop"}, ft = {"markdown"}, build = function() vim.fn["mkdp#util#install"]() end,},
  {"numToStr/Comment.nvim",lazy = false},
  {"windwp/nvim-autopairs", event = "InsertEnter" , config = true},
  {"stevearc/oil.nvim"},
  {"nvim-telescope/telescope.nvim", dependencies = {"nvim-lua/plenary.nvim"}},
  -- Language Plugins
  {"akinsho/flutter-tools.nvim", lazy = false, depencies = {"stevearc/dressing.nvim", config = true}},
  "neovim/nvim-lspconfig",
  {"williamboman/mason.nvim", dependencies = {"williamboman/mason-lspconfig.nvim"}},
  {"L3MON4D3/LuaSnip", build = "make install_jsregexp"},
  "folke/neodev.nvim",
  {"hrsh7th/nvim-cmp", dependencies = {"hrsh7th/cmp-nvim-lsp","hrsh7th/cmp-path","hrsh7th/cmp-buffer","saadparwaiz1/cmp_luasnip","rafamadriz/friendly-snippets"}},
  "nvim-treesitter/nvim-treesitter",
  -- Themes Plugins
  "morhetz/gruvbox",
  "navarasu/onedark.nvim",
  "folke/tokyonight.nvim",
}
local opts = {}
require("lazy").setup(plugins,opts)
require("hotkeys")
require("init")
-- require("lsps")
-- require("plugins")


-- SETUP THEME VIM
vim.cmd("colorscheme tokyonight-night")
require("onedark").load()
