local opts = { noremap = true, silent = true }

-- Salir del modo insercion
vim.keymap.set('i', 'jj', '<ESC>', opts)

-- Dividir pantalla
vim.keymap.set('n', '<leader>v', ':vsplit<CR>', opts)
vim.keymap.set('n', '<leader>s', ':split<CR>', opts)

-- Ir al inicio y al final de la linea
vim.keymap.set('n', 'ss', '<S-$>', opts)
vim.keymap.set('n', 'aa', '0', opts)

-- Limpiar el resaltado de busquedas
vim.keymap.set('n', '<ESC>', ':noh<return><esc>', opts)

-- Cambiar de foco entre las divisiones de pantalla
vim.keymap.set('n', 'mm', '<C-w>l', opts)
vim.keymap.set('n', 'nn', '<C-w>h', opts)

vim.keymap.set('n', '|', ':NvimTreeToggle<CR>', opts)

-- Guardado de archivos personalizada
vim.keymap.set('n', '<C-s>', ':w<CR>', opts)

-- Manejo de conflictos de GIT
vim.keymap.set('n', '<C-c>', ':GitConflictChooseOurs<CR>', opts)
vim.keymap.set('n', '<C-i>', ':GitConflictChooseTheirs<CR>', opts)
vim.keymap.set('n', '<C-b>', ':GitConflictChooseBoth<CR>', opts)
vim.keymap.set('n', '<C-l>', ':GitConflictListQf<CR>', opts)


