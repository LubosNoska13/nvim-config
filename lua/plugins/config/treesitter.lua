-- import nvim-treesitter plugin safely
local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
  return
end

treesitter.setup {
    -- List of all languages
    ensure_installed = { "c", "lua", "vim", "python", "html", "css", "json", "gitignore", "make", "bash", "markdown", "cmake" },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- Automatically install missing parsers when entering buffer
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
    autotag = {
        enable = true,
  },
}
