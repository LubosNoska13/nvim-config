local mark_status, mark = pcall(require, "harpoon.mark")
if not mark_status then
    return 
end

local ui_status, ui = pcall(require, "harpoon.ui")
if not ui_status then
    return 
end

local keymap = vim.keymap
keymap.set("n", "<leader>ha", mark.add_file) -- Add file to harpoon
keymap.set("n", "<leader>he", ui.toggle_quick_menu) -- Explore harpoon files
keymap.set("n", "<C-s>", function() ui.nav_file(1) end) -- First file in harpoon
keymap.set("n", "<C-d>", function() ui.nav_file(2) end) -- Second file in harpoon
keymap.set("n", "<C-f>", function() ui.nav_file(3) end) -- Third file in harpoon
