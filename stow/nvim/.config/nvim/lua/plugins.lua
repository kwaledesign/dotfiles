return {
  -- Colorscheme: Solarized
  { "shaunsingh/solarized.nvim", lazy = false, priority = 1000 },

  -- Core deps
  { "nvim-lua/plenary.nvim" },
  { "nvim-tree/nvim-web-devicons" },

  -- UI
  { "nvim-lualine/lualine.nvim", config = function()
      require("lualine").setup({ options = { theme = "auto" } })
    end
  },
  { "folke/which-key.nvim", opts = {} },

  -- Git
  { "lewis6991/gitsigns.nvim", opts = {} },

  -- Finder (Telescope only)
  { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "plenary.nvim" } },

  -- Treesitter
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  { "windwp/nvim-ts-autotag", opts = {} },

  -- Editing QoL
  { "windwp/nvim-autopairs", opts = {} },
  { "kylechui/nvim-surround", version = "*", opts = {} },
  { "numToStr/Comment.nvim", opts = {} },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
  { "folke/todo-comments.nvim", opts = {} },

  -- LSP stack
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim", build = ":MasonUpdate", opts = {} },
  { "williamboman/mason-lspconfig.nvim" },
  { "WhoIsSethDaniel/mason-tool-installer.nvim" }, -- auto-install fmt/lint tools

  -- Completion
  { "hrsh7th/nvim-cmp" },
  { "hrsh7th/cmp-nvim-lsp" },
  { "hrsh7th/cmp-buffer" },
  { "hrsh7th/cmp-path" },
  { "L3MON4D3/LuaSnip" },
  { "rafamadriz/friendly-snippets" },
  { "onsails/lspkind.nvim" },

  -- Formatting + Linting
  { "stevearc/conform.nvim" },
  { "mfussenegger/nvim-lint" },

  -- Diagnostics UI (optional)
  { "folke/trouble.nvim", opts = {} },

  -- Vim<->tmux navigation (optional but handy)
  { "christoomey/vim-tmux-navigator" },

  -- Testing (neotest)
  { "nvim-neotest/neotest" },
  { "nvim-neotest/neotest-jest" },
  { "marilari88/neotest-vitest" },
  { "nvim-neotest/neotest-python" },
}

