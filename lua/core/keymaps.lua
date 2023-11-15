local keymap = vim.keymap

-- Make spacebar a leader key
vim.g.mapleader = " "

-- keymap.set("n", "<leader>eh", vim.cmd.Ex) 

-- clear search highlights
keymap.set('n', '<leader>nc', ':nohlsearch<CR>')

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

-- move multiple line up or down
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

