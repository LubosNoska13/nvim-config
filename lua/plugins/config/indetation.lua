local setup, indent = pcall(require, "indent_blankline")
if not setup then
    return 
end

vim.opt.list = true
vim.opt.listchars:append "space:⋅" 

indent.setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
