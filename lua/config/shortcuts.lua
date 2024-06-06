local map = vim.api.nvim_set_keymap
local options = { noremap = true }


map('n', '<C-s>', '<cmd>w<cr>', options) -- Guardar archivo
map('n', '<C-w>', '<cmd>q<cr>', options) -- Cerrar archivo

-- Atajos de movimiento de línea
map('n', '<A-Up>', ':m .-2<CR>==', options)
map('v', '<A-Up>', ':m \'<-2<CR>gv=gv', options)

map('n', '<A-Down>', ':m .+1<CR>==', options)
map('v', '<A-Down>', ':m \'>+1<CR>gv=gv', options)

map('v', '<Tab>', '>gv', options)
map('v', '<S-Tab>', '<gv', options)

-- Copy
map('n', '<C-c>', 'Y', options)
map('v', '<C-c>', 'Y', options)
map('i', '<C-c>', '<Esc>Ygi', options)

-- Paste
map('n', '<C-v>', 'p', options)
map('v', '<C-v>', 'o<Esc>p', options)
map('i', '<C-v>', '<Esc>pgi', options)

-- Save changes
map('n', '<C-s>', ':w<CR>', options)
map('v', '<C-s>', '<Esc>:w<CR>gv', options)
map('i', '<C-s>', '<Esc>:w<CR>gi', options)

-- Undo
map('n', '<C-z>', ':undo<CR>', options)
map('v', '<C-z>', ':undo<CR>', options)
map('i', '<C-z>', '<Esc>:undo<CR>', options)

-- Redo
map('n', '<C-y>', ':redo<CR>', options)
map('v', '<C-y>', ':redo<CR>', options)
map('i', '<C-y>', '<Esc>:redo<CR>', options)


