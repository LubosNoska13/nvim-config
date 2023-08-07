local keymap = vim.keymap

--== NvimTree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- toggle file explorer
-- keymap.set("n", "<leader>ef", ":NvimTreeFocus<CR>") -- focus on file explorer


--== Harpoon

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
keymap.set("n", "<leader>ha", mark.add_file)
keymap.set("n", "<leader>he", ui.toggle_quick_menu)
keymap.set("n", "<C-s>", function() ui.nav_file(1) end)
keymap.set("n", "<C-d>", function() ui.nav_file(2) end)
keymap.set("n", "<C-f>", function() ui.nav_file(3) end)
