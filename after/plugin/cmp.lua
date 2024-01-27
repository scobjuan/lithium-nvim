-- Este archivo es el encargado de utilizar las sugerencias pasadas por lsp. Cuando lsp lista las opciones, el cmp se encarga de autocompletar con una serie de instrucciones dadas por nosotros

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  preselect = 'item',
  -- Permite seleccionar por defecto la primera opcion de las sugerencias
  completion = {
    completeopt = 'menu,menuone,noinsert'
  },
  mapping = cmp.mapping.preset.insert({
    -- Habilita la opcion para navegar entre opciones dadas por lsp con el tabulador
    ['<A-j>'] = cmp_action.luasnip_supertab(),
    ['<A-k>'] = cmp_action.luasnip_shift_supertab(),

    -- Habilita para que podamos aplicar la primer opcion con la tecla enter
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  })
})

-- Toda esta documentacion fue extraida de la siguiente url: https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/autocomplete.md#preselect-first-item
