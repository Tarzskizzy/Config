require("configs")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
-- initialazing nvim
vim.cmd("set tgc")

require("lazy").setup({
	spec = {
		--{ "LazyVim/LazyVim"}, --import = "lazyvim.plugins" },
		{ import = "plugins.core" },
		{ import = "plugins.languages" },
		{ import = "plugins.themes" },
	},
})
require("hotkeys")
-- SETUP THEME VIM
vim.cmd("colorscheme tokyonight-night")
