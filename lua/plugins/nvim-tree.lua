return {
    "nvim-tree/nvim-tree.lua",
    keys = {
      { "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle Nvim Tree" },
    },
    opts = {
      filters = {
          dotfiles = true,
      },
    },
}
