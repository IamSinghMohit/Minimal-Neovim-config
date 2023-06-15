local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
   "nvim-lua/plenary.nvim", -- lua functions that many plugins us
  --  colorscheme
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000 -- Ensure it loads first
  },

  -- commenting with gc
  "numToStr/Comment.nvim",

  -- file explorer
  "nvim-tree/nvim-tree.lua",

  -- vs-code like icons
  "nvim-tree/nvim-web-devicons",

  -- autocompletion
  "hrsh7th/nvim-cmp",   -- completion plugin
  "hrsh7th/cmp-buffer", -- source for text in buffer
  "hrsh7th/cmp-path",   -- source for file system paths

  -- snippets
  "L3MON4D3/LuaSnip",             -- snippet engine
  "saadparwaiz1/cmp_luasnip",     -- for autocompletion
  "rafamadriz/friendly-snippets", -- useful snippets

  -- managing & installing lsp servers, linters & formatters
  "williamboman/mason.nvim",           -- in charge of managing lsp servers, linters & formatters
  "williamboman/mason-lspconfig.nvim", -- bridges gap b/w mason & lspconfig

  -- configuring lsp servers
  "neovim/nvim-lspconfig", -- easily configure language servers
  "hrsh7th/cmp-nvim-lsp",  -- for autocompletion
  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    dependencies = {
      { "nvim-tree/nvim-web-devicons" },
      { "nvim-treesitter/nvim-treesitter" },
    },
  },                      -- enhanced lsp uis
  "onsails/lspkind.nvim", -- vs-code like icons for autocompletion

  -- formatting & linting
  "jose-elias-alvarez/null-ls.nvim", -- configure formatters & linters
  "jayp0521/mason-null-ls.nvim",     -- bridges gap b/w mason & null-ls

  -- treesitter configuration
  {
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
    dependencies = {
      "windwp/nvim-ts-autotag",
      "JoosepAlviste/nvim-ts-context-commentstring",
    }
  },

  -- auto closing
  "windwp/nvim-autopairs", -- autoclose parens, brackets, quotes, etc...
  -- terminal
  "akinsho/toggleterm.nvim",
  -- bufferline
  { 'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons' },
  "moll/vim-bbye",
}

local opts = {}

require("lazy").setup(plugins, opts)

