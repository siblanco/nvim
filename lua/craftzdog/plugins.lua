local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim'
  use 'nvim-lualine/lualine.nvim'       -- Statusline
  use 'nvim-lua/plenary.nvim'           -- Common utilities
  use 'hrsh7th/cmp-buffer'              -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp'            -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/nvim-cmp'                -- Completion
  use 'neovim/nvim-lspconfig'           -- LSP
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'

  use 'L3MON4D3/LuaSnip'
  use { "saadparwaiz1/cmp_luasnip" }     -- snippet completions
  use { "rafamadriz/friendly-snippets" } -- a bunch of snippets to use
  use 'siblanco/nvim-snippets'
  use 'tpope/vim-commentary'

  use {
    'glepnir/lspsaga.nvim',
    commit = 'b7b4777369b441341b2dcd45c738ea4167c11c9e'
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-fugitive'
  use 'junegunn/gv.vim'

  use { "tpope/vim-repeat" }
  use 'nvim-treesitter/nvim-treesitter-context'
  use { "tpope/vim-surround" }
  use "moll/vim-bbye"
  use "lukas-reineke/indent-blankline.nvim"
  use { "folke/trouble.nvim", config = function()
    require('trouble').setup {}
  end }

  use "RRethy/vim-illuminate"
  -- use "phaazon/hop.nvim"

  use "mbbill/undotree"
end)
