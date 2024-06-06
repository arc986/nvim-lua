vim.g.mapleader = " "

local opt = vim.o

opt.backup = false
opt.writebackup = false
opt.mouse = "a" -- Habilita el soporte para el ratón
opt.encoding = "utf8"
opt.spelllang = "en"
opt.number = true
opt.relativenumber = true
opt.conceallevel = 3
opt.cursorline = true
opt.hidden = true
opt.expandtab = true
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smartindent = true
opt.errorbells = false
opt.wrap = false
opt.swapfile = false
opt.undofile = true
-- opt.undodir = os.getenv "HOME" .. "/.cache/nvim/undodir"
opt.hlsearch = false
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.termguicolors = true
opt.scrolloff = 4
opt.sidescrolloff = 4
opt.showmode = false
opt.clipboard = "unnamedplus"
opt.splitbelow = true
opt.splitright = true
opt.autowrite = true
opt.list = true
opt.listchars = "tab:\\ ,trail:-"
opt.laststatus = 3
opt.cmdheight = 1
opt.updatetime = 300
opt.signcolumn = "yes"
opt.equalalways = false
opt.splitkeep = "screen"
opt.shortmess = "filnxtToOFc" -- Cambia a la cadena recomendada en la documentación de Neovim
