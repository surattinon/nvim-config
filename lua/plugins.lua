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
  use 'L3MON4D3/LuaSnip' -- LuaSnip
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

  ---------- LSP UI --------------
  use ({
    'nvimdev/lspsaga.nvim',
    after = 'nvim-lspconfig',
    config = function()
      require('lspsaga').setup({})
    end,
  })

  use 'williamboman/mason.nvim' -- Mason-LSP
  use 'williamboman/mason-lspconfig.nvim' -- Mason-LSP

  ---------------- coc-nvim-ultisnips setup with react snip ------------------
 -- use {'neoclide/coc.nvim', branch = 'master', run = 'npm ci'}
  use 'quangnguyen30192/cmp-nvim-ultisnips'
  use 'SirVer/ultisnips'
  use 'mlaursen/vim-react-snippets'
  ----------------------------------------------------------------------------

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
end)
