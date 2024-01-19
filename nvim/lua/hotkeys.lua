local opts = { noremap = true, silent = true }
-- NVIM HOTKEYS
vim.keymap.set('n','<C-u>','<C-u>zz')
vim.keymap.set('n','<C-d>','<C-d>zz')
vim.keymap.set('n','n','nzz')
vim.keymap.set('n','N','Nzz')
vim.keymap.set('n','<Tab>',':tabNext<Enter>',opts)
vim.keymap.set('n','<S-Tab>',':tabprevious<Enter>',opts)
vim.keymap.set('n','<A-d>',':tabclose<Enter>',opts)
vim.keymap.set('n','<A-t>',':tabnew<Enter>',opts)
vim.keymap.set('n','<C-l>',':vertical resize -5<Enter>',opts)
vim.keymap.set('n','<C-h>',':vertical resize +5<Enter>',opts)
vim.keymap.set('n','<C-j>',':resize +2<Enter>',opts)
vim.keymap.set('n','<C-k>',':resize -2<Enter>',opts)


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
vim.keymap.set('n','<leader>fd',Tbuiltin.lsp_definitions,{})
vim.keymap.set('n','<leader>fr',Tbuiltin.lsp_references,{})

-- BUFFER COMAND
vim.keymap.set('n','<A-c>',':bdelete<Enter>',opts)
vim.keymap.set('n','<A-.>',':bnext<Enter>',opts)
vim.keymap.set('n','<A-,>',':bprevious<Enter>',opts)
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

-- OIL
vim.keymap.set('n','<leader>oo',':Oil<Enter>',opts)

-- COMMENT
-- `gcc` - Toggles the current line using linewise comment
-- `gbc` - Toggles the current line using blockwise comment
-- `[count]gcc` - Toggles the number of line given as a prefix-count using linewise
-- `[count]gbc` - Toggles the number of line given as a prefix-count using blockwise
-- `gc[count]{motion}` - (Op-pending) Toggles the region using linewise comment
-- `gb[count]{motion}` - (Op-pending) Toggles the region using blockwise comment
