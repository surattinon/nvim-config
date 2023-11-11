local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  use {
    'svrana/neosolarized.nvim',
    requires = { 'tjdevries/colorbuddy.nvim' }
  }
  use 'kyazdani42/nvim-web-devicons' -- File icons
  use({
	"L3MON4D3/LuaSnip",
  requires = { "rafamadriz/friendly-snippets" },
	-- follow latest release.
	tag = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
	-- install jsregexp (optional!:).
	run = "make install_jsregexp"
  })
  use 'hoob3rt/lualine.nvim' -- StatusLine
  use 'onsails/lspkind-nvim' -- vscode-like pictograms

  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for nvim's build-in LSP
  use 'hrsh7th/nvim-cmp' -- Completion
  use 'neovim/nvim-lspconfig' -- LSP

  ---------- nvim-surround -----------
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })

  ---------- Pair Line --------------
  use ('lukas-reineke/indent-blankline.nvim')

  use 'williamboman/mason.nvim' -- Mason-LSP
  use 'williamboman/mason-lspconfig.nvim' -- Mason-LSP

  ---------------- coc-nvim-ultisnips setup with react snip ------------------
 -- use {'neoclide/coc.nvim', branch = 'master', run = 'npm ci'}
  use 'mlaursen/vim-react-snippets'
  ----------------------------------------------------------------------------
  
  use({
  "aurum77/live-server.nvim",
    run = function()
      require"live_server.util".install()
    end,
    cmd = { "LiveServer", "LiveServerStart", "LiveServerStop" },
  })


  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use 'jose-elias-alvarez/null-ls.nvim' -- use nvim as a language server
  use 'MunifTanjim/prettier.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use 'nvim-lua/plenary.nvim' -- Common utilities
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'akinsho/nvim-bufferline.lua' -- Tabs
  use 'norcalli/nvim-colorizer.lua'

  use 'lewis6991/gitsigns.nvim'
  use 'dinhhuy258/git.nvim'

  use 'mattn/emmet-vim' -- HTML emmet snippets

  use 'tpope/vim-fugitive' --vim-fugitive for git bash in vim

  use 'ThePrimeagen/vim-be-good' -- Vim motion practice
end)
