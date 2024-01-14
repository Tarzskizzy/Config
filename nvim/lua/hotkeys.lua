local opts = { noremap = true, silent = true }
-- NVIM HOTKEYS
vim.keymap.set('n','<C-u>','<C-u>zz')
vim.keymap.set('n','<C-d>','<C-d>zz')
vim.keymap.set('n','n','nzz')
vim.keymap.set('n','N','Nzz')

-- TOGGLE TERM HOTKEYS
vim.keymap.set('n','<leader>tf',':ToggleTerm direction=float<Enter>',opts)
vim.keymap.set('n','<leader>tt',':ToggleTerm <Enter>',opts)
vim.keymap.set('n','<leader>tv',':ToggleTerm direction=vertical size=40<Enter>',opts)

-- IN TOGGLE TERM HOTKEYS
vim.keymap.set('t','<C-h>','htop<Enter>',opts)

-- TELESCOPE HOTKEYS
local Tbuiltin = require("telescope.builtin")
vim.keymap.set('n','<leader>ff',Tbuiltin.find_files,{})
vim.keymap.set('n','<leader>fg',Tbuiltin.live_grep,{})
vim.keymap.set('n','<leader>fb',Tbuiltin.buffers,{})
vim.keymap.set('n','<leader>fh',Tbuiltin.help_tags,{})
vim.keymap.set('n','<leader>ft',Tbuiltin.builtin,{})

-- BARBAR HOTKEYS
local map = vim.api.nvim_set_keymap
map('n','<tab>',':BufferNext<Enter>',opts)
map('n','<S-tab>',':BufferPrevious<Enter>',opts)
map('n','<A-c>',':BufferClose<Enter>',opts)
map('n','<A-p>',':BufferPin<Enter>',opts)
map('n','<A-d>',':bdelete<Enter>',opts)

-- NVIM TREE HOTKEYS
vim.keymap.set('n','<leader>da',':Neotree toggle<Enter>',opts)
vim.keymap.set('n','<leader>dd',':Neotree focus<Enter>',opts)

-- MARKDOWN-PREVIEW
vim.keymap.set('n','<leader>mm',':MarkdownPreviewToggle<Enter>',opts)
vim.keymap.set('n','<leader>mi',':MarkdownPreview<Enter>',opts)
vim.keymap.set('n','<leader>ms',':MarkdownPreviewStop<Enter>',opts)
-- SURROUND HOTKEYS - s
-- ys - surround -> ysiw) surround inner word adding ")"
-- cs' change surround ' 
-- ds - delete surround

-- VIM SPLIT WINDOWS HOTKEYS
-- ctrl + w + v - split vertical
-- ctrl + w + s - split horizontal
-- ctrl + w + n - split a new window buffers
-- ctrl + w + {h,j,k,l} move around windows

-- LUASNIP HOTKEYS
local ls = require("luasnip")
vim.keymap.set({"i"}, "<C-K>", function() ls.expand() end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-L>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-J>", function() ls.jump(-1) end, {silent = true})

vim.keymap.set({"i", "s"}, "<C-E>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end, {silent = true})
