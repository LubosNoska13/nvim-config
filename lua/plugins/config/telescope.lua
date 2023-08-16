-- import telescope plugin safely
local telescope_status, telescope = pcall(require, "telescope")
if not telescope_status then
    return
end

local actions_status, actions = pcall(require, "telescope.actions")
if not actions_status then
    return
end

local builtin_setup, builtin = pcall(require, "telescope.builtin")
if not builtin_setup then
    return
end

vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

telescope.setup({
    defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,
            },
        },
    },
})
