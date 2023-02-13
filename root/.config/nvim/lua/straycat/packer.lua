-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    -- fuzy finder
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Theme
  use {
    'shaunsingh/solarized.nvim',
    config = function()
      vim.cmd('colorscheme solarized')
    end
  }

  -- syntax parser
  use {
    'nvim-treesitter/nvim-treesitter',
    { run = ':TSUpdate' }
  }

  -- undo tree
  use 'mbbill/undotree'

  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      -- Snippet Collection (Optional)
      { 'rafamadriz/friendly-snippets' },
    }
  }

  -- learn vim
  use 'ThePrimeagen/vim-be-good'

  -- status line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- dev icons
  use 'nvim-tree/nvim-web-devicons'
  -- tabs
  use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  -- file tree
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- git diff view and merge tool
  use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }
  -- comment lines
  use 'preservim/nerdcommenter'
  -- session manager
  use {
    'rmagatti/auto-session',
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
      }
    end
  }
  -- surround with stuff
  use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  })
  -- open terminals inside nvim
  use { "akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end }
  -- Git
  use 'tpope/vim-fugitive'
  -- Git hunks interaction
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require('gitsigns').setup()
    end
  }
  -- clipboard and macro manager
  use {
    "AckslD/nvim-neoclip.lua",
    requires = {
      { 'kkharji/sqlite.lua', module = 'sqlite' },
      { 'nvim-telescope/telescope.nvim' },
    },
    config = function()
      require('neoclip').setup({
        enable_persistent_history = true
      })
    end
  }
  use 'itchyny/vim-cursorword'
  use 'delphinus/vim-auto-cursorline'
  use {
    'sudormrfbin/cheatsheet.nvim',

    requires = {
      { 'nvim-telescope/telescope.nvim' },
      { 'nvim-lua/popup.nvim' },
      { 'nvim-lua/plenary.nvim' },
    }
  }
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use 'mrjones2014/nvim-ts-rainbow'
  -- Show issues inside file
  use {
    "folke/trouble.nvim",
    requires = "nvim-tree/nvim-web-devicons",
    config = function()
      require("trouble").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }
  use 'folke/lsp-colors.nvim'
  use {
    "petertriho/nvim-scrollbar",
    config = function() require("scrollbar").setup {} end
  }
  use({
    "andythigpen/nvim-coverage",
    requires = "nvim-lua/plenary.nvim",
    config = function()
      require("coverage").setup {}
    end,
  })
  -- TODO: Add mappings in one place
  use({
    'mrjones2014/legendary.nvim',
    requires = 'kkharji/sqlite.lua'
  })
  -- help with shortcuts
  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
      }
    end
  }
  -- github cli
  use {
    'pwntester/octo.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim',
      'kyazdani42/nvim-web-devicons',
    },
    config = function()
      require "octo".setup()
    end
  }
  -- Better quickfix window
  use { 'kevinhwang91/nvim-bqf', ft = 'qf' }
  use { 'junegunn/fzf', run = function()
    vim.fn['fzf#install']()
  end
  }
  use({
    "roobert/search-replace.nvim",
    config = function()
      require("search-replace").setup({
        -- optionally override defaults
        default_replace_single_buffer_options = "gcI",
        default_replace_multi_buffer_options = "egcI",
      })
    end,
  })
  -- install without yarn or npm
  use({
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  })
  use 'stsewd/gx-extended.vim'
  use 'nvim-treesitter/nvim-treesitter-context'
  use 'mfussenegger/nvim-dap'
  use {
    "rcarriga/nvim-dap-ui",
    requires = { "mfussenegger/nvim-dap" },
    config = function()
      require("dapui").setup()
    end
  }
  use {
    'NvChad/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup();
    end
  }
  use "lukas-reineke/indent-blankline.nvim"
  use {
    'j-hui/fidget.nvim',
    config = function()
      require('fidget').setup {
        window = {
          blend = 0,
        },
      }
    end
  }
  use {
    "utilyre/barbecue.nvim",
    tag = "*",
    requires = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    after = "nvim-web-devicons", -- keep this if you're using NvChad
    config = function()
      require("barbecue").setup {
        theme = "solarized"
      }
    end,
  }
  use {
    'windwp/nvim-ts-autotag',
    config = function()
      require('nvim-ts-autotag').setup()
    end
  }
  use 'mattn/emmet-vim'
  use({
    "Pocco81/auto-save.nvim",
    config = function()
      require("auto-save").setup {}
    end,
  })
end)
