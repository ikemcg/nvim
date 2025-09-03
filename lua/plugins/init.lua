return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false, -- load during startup
    priority = 1000, -- load before all other startup plugins
    config = function()
      vim.cmd("colorscheme dayfox")
    end,
  },
  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },
  { "tpope/vim-fugitive" },
  { "tpope/vim-repeat" },
  { "godlygeek/tabular" },
  {
    "numToStr/Comment.nvim",
    opts = {
      toggler = {
        line = "<leader>cc",
        block = "<leader>bc",
      },
      opleader = {
        line = "<leader>c",
        block = "<leader>b",
      },
    },
  },
}
