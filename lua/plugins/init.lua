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

-- Spacebar is a leader key
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

    -- Statusline
    "nvim-lualine/lualine.nvim",

    -- Auto closing
    "windwp/nvim-autopairs",
    "windwp/nvim-ts-autotag",
    
    -- Change or Delete surrounding tags
    "tpope/vim-surround",

    -- Block indetation
    "lukas-reineke/indent-blankline.nvim",
    
    -- Move between windows with vim keys
    {"christoomey/vim-tmux-navigator", lazy=false},
    
    -- Git signs
    "lewis6991/gitsigns.nvim",

    -- Telescope
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.2',
    -- or                         , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    -- Autocompletion
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",

    -- Snippets
    {
        "L3MON4D3/LuaSnip",
        dependencies = { "rafamadriz/friendly-snippets" },
    },
    "saadparwaiz1/cmp_luasnip",

    -- Managing and Installing lsp server
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",

    -- Configuring lsp server 
    "neovim/nvim-lspconfig",

    -- Lsp Autocompletion
    "hrsh7th/cmp-nvim-lsp",

    -- Icons for autocompletion menu
    "onsails/lspkind.nvim",
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
