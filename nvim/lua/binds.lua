local opts = { noremap=true, silent=true }

-- Mapleader
vim.keymap.set('n', '<Space>', '<Nop>')
vim.g.mapleader = ' '

-- Navigate with ctrl-[hjkl]
vim.keymap.set('n', '<C-h>', ":wincmd h<CR>", opts)
vim.keymap.set('n', '<C-j>', ":wincmd j<CR>", opts)
vim.keymap.set('n', '<C-k>', ":wincmd k<CR>", opts)
vim.keymap.set('n', '<C-l>', ":wincmd l<CR>", opts)

-- Move text with alt-[jk]
vim.keymap.set('n', '<A-j>', ":m .+1<CR>==", opts)
vim.keymap.set('n', '<A-k>', ":m .-2<CR>==", opts)
vim.keymap.set('i', '<A-j>', "<Esc>:m .+1<CR>==gi", opts)
vim.keymap.set('i', '<A-k>', "<Esc>:m .-2<CR>==gi", opts)
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>gv=gv", opts)
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>gv=gv", opts)

-- Diagnostics
vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<Leader>q', vim.diagnostic.setloclist, opts)

-- Telescope
vim.keymap.set('n', '<Leader>ff', ":Telescope find_files<CR>", opts)
vim.keymap.set('n', '<Leader>fg', ":Telescope live_grep<CR>", opts)
vim.keymap.set('n', '<Leader>fb', ":Telescope buffers<CR>", opts)
vim.keymap.set('n', '<Leader>fh', ":Telescope help_tags<CR>", opts)
