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

local keymap = vim.keymap

keymap.set('n', '<leader>ff', builtin.find_files, {}) -- Find files
keymap.set('n', '<leader>fg', builtin.live_grep, {}) -- Find specific text inside files
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})

telescope.setup({
    defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
        mappings = {
            i = {
                ["<C-j>"] = actions.move_selection_next, -- Move up in menu
                ["<C-k>"] = actions.move_selection_previous, -- Move down in menu
            },
        },
    },
})
