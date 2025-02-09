vim.opt.nu = true --enable line number
vim.opt.relativenumber = true -- enable relativenumber
vim.opt.splitbelow = true --h split below the current 
vim.opt.splitright = true --h split below the current 

vim.api.nvim_exec([[ 
  augroup YankHighlight
    autocmd!
    autocmd TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=200}
  augroup END
]], false) --highlight yank


vim.opt.tabstop = 4 --# of spaces a tab counts for
vim.opt.softtabstop = 4 -- same but insert mode
vim.opt.shiftwidth = 4 -- same but when autoindentt
vim.opt.expandtab = true -- tabs is space

vim.opt.smartindent = true -- autoindent newlien
vim.opt.smartcase = true -- overrides ignorce if search contains uppercase so 
vim.opt.ignorecase = true -- ignore case in search
vim.opt.inccommand = "split" --live preview of sub commands in split window

vim.opt.wrap = false --no line wrapp

vim.opt.swapfile = false -- don't create swap
vim.opt.backup = false -- don't create backup
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" --undo files stored
vim.opt.undofile = true -- persintent undo means saves to disk

vim.opt.hlsearch = false -- do not highlight search when comelpte
vim.opt.incsearch = true -- highlight as you are typing in search

vim.opt.termguicolors = true --color support

vim.opt.scrolloff = 8 -- keep 8 lines visible above and below cursor 
vim.opt.signcolumn = "yes" --show sign columne
vim.opt.isfname:append("@-@") --can have these character in file names

vim.opt.updatetime = 50 --time in millisecond before nvim trigger

vim.g.mapleader = " " -- leader is set to space, can be removed from some places but cba
