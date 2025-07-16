return {
  {
    'EdenEast/nightfox.nvim',
    lazy = false,     -- load during startup
    priority = 1000,  -- load before all other startup plugins
    config = function()
      vim.cmd("colorscheme dayfox")
    end
  },
  {'tpope/vim-surround'},
  {'tpope/vim-repeat'},
  {'godlygeek/tabular'},
  {
      'numToStr/Comment.nvim',
      opts = {
        toggler = {
            line = '<leader>cc',
            block = '<leader>bc',
        },
        opleader = {
            line = '<leader>c',
            block = '<leader>b',
        },
      }
  },
  {
    "mason-org/mason.nvim",
    opts = {}
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "phpactor",
        "eslint",
        "lua_ls",
        "jsonls",
        "yamlls",
        "ts_ls",
        "marksman",
      },
    }
  },
}
