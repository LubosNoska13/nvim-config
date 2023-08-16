local setup, tree = pcall(require, "nvim-tree")
if not setup then
    return 
end

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

tree.setup({
  view = {
    adaptive_size = true
  }
})



