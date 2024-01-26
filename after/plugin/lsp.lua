local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	lsp_zero.default_keymaps({buffer = bufnr})
	local opts = { buffer = bufnr, remap = false }

	-- Ir a la definicion de la variable o metodo
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)

	-- Ver informacion sobre la variable o metodo
	vim.keymap.set('n', 'gh', vim.lsp.buf.hover, opts)

	vim.keymap.set('n', '<leader>n', vim.diagnostic.goto_next, opts)
	vim.keymap.set('n', '<leader>m', vim.diagnostic.goto_prev, opts)
end)

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {
		'tsserver',
	},
	handlers = {
		lsp_zero.default_setup,
	},
})
