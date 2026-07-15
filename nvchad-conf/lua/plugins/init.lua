return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  --{
  --'stevearc/oil.nvim',
  --  ---@module 'oil'
  --  ---@type oil.SetupOpts
  --  opts = {},
  --  -- Optional dependencies
  --  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  --  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  --  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  --  lazy = false,
  --},

  {
    "j-hui/fidget.nvim",
  },

  {
    "ThePrimeagen/vim-be-good",
  },

  {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {},
  keys = {
    { "zk", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "Zk", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
   },
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
      "LazyGitFilter",
      "LazyGitFileterCurrentFile",
    },
    dependencies = {
     "nvim-lua/plenary.nvim",
    },
    keys = {
      {"<leader>gg", "<cmd>LazyGit<cr>", desc = "Open lazy git"},
    },
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css", "javascript", "json"
  		},
  	},
  },
}
