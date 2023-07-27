local keymap = vim.keymap

vim.g.mapleader = " "

keymap.set("n", "<leader>eh", vim.cmd.Ex) 

-- clear search highlights
keymap.set('n', '<leader>nc', ':nohlsearch<CR>')

-- move multiple line up or down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


-- == Plugins

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
