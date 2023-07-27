-- lazy.nvim manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "

local plugins = {
    -- colorscheme 
    { "bluz71/vim-nightfly-colors", name = "nightfly", lazy = false, priority = 1000 },

    -- Text highlighting
    "nvim-treesitter/nvim-treesitter",

    -- Harpoon
    "nvim-lua/plenary.nvim",
    "ThePrimeagen/harpoon",

    -- File tree
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    
    -- Comments
    "numToStr/Comment.nvim",

    -- statusline
    "nvim-lualine/lualine.nvim",

    -- auto closing
    "windwp/nvim-autopairs",
    "windwp/nvim-ts-autotag",

    "tpope/vim-surround",

    -- Block indetation
    "lukas-reineke/indent-blankline.nvim",
}

local opts = {
    install = {
        -- install missing plugins on startup. This doesn't increase startup time.
        missing = true,
        -- try to load one of these colorschemes when starting an installation during startup
        colorscheme = { "nightfly" },
  },
}

require("lazy").setup(plugins, opts)