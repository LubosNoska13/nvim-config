local opt = vim.opt -- for conciseness

-- line numbers
opt.relativenumber = true  -- show relative line numbers
opt.number = true  -- shows absolute line number on cursor line (when relative number is on)

-- tabs & indentation
opt.tabstop = 4  -- 4 spaces for tabs (prettier default)
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true  -- copy indent from current line when starting new one
opt.smartindent = true

-- line wrapping
opt.wrap = false -- disable line wrapping

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive
opt.iskeyword:append("-") -- consider string-string as whole word

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- appearance
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift

-- backspace
opt.backspace = {"eol", "start", "indent"} -- allow backspacing over everything in insert mode

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.scrolloff = 9

opt.mouse = "a" -- allow the mouse to be used in neovim
