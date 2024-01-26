vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer se llama asi mismo
  use 'wbthomason/packer.nvim'

  -- Descargamos el temas a utilizar
  use { 'catppuccin/nvim', as = 'catppuccin' }
  use { 'craftzdog/solarized-osaka.nvim', as = 'solarized' }

  -- Descargamos telescope (buscador de archivos)
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Descargamos treesitter (colorea el texto segun el lenguaje)
  use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })

  -- Descargamos lsp (autocompletado y muestra de errores para cada lenguaje)
   use {
     'VonHeikemen/lsp-zero.nvim',
       branch = 'v3.x',
         requires = {
           -- Para manejar los servidores de lenguajes desde neovim
           { 'williamboman/mason.nvim' },
           { 'williamboman/mason-lspconfig.nvim' },

           -- LSP Support
           { 'neovim/nvim-lspconfig' },

           -- Autocompletado
           { 'hrsh7th/nvim-cmp' },
           -- { 'hrsh7th/cmp-buffer' },
           -- { 'hrsh7th/cmp-path' },
           -- { 'saadparwaiz1/cmp_luasnip' },
           { 'hrsh7th/cmp-nvim-lsp' },
           -- { 'hrsh7th/cmp-nvim-lua' },

           -- Snipperts
           { 'L3MON4D3/LuaSnip' },

           -- Snippets adicionales (optional)
           -- { 'rafamadriz/friendly-snippets' },
         }
   }

	 -- Explorador de archivos Neovim
	 use {
		 'nvim-tree/nvim-tree.lua',
		 requires = {
			 'nvim-tree/nvim-web-devicons',
			}
		}

		-- Comentarios de manera rápida
		use ('numToStr/Comment.nvim')

		-- Plugins para control de git
		use ('tpope/vim-fugitive')

		-- Emoji log
		use ('xiyaowong/telescope-emoji.nvim')

		-- Revolve git conflicts
		use {
			'akinsho/git-conflict.nvim',
			tag= '*',
		}

		-- Auto cerrado de simbolos
		use ('windwp/nvim-autopairs')

		-- Codeium (Autocompletado con IA)
		use {'Exafunction/codeium.vim',
		config = function ()
			vim.keymap.set('i', '<C-g>', function () return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
			vim.keymap.set('i', '<c-;>', function () return vim.fn['codeium#CycleCompletions'](1) end, { expr = true, silent = true })
			vim.keymap.set('i', '<c-,>', function () return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true, silent = true })
			vim.keymap.set('i', '<c-x>', function () return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
		end
	}

end)
