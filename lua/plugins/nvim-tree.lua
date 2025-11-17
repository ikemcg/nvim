return {
    "nvim-tree/nvim-tree.lua",
    keys = {
      { "<leader>e", ":NvimTreeToggle<CR>", desc = "Toggle Nvim Tree" },
    },
    opts = {
      filters = {
          git_ignored = false,
          dotfiles = false,
      },
      view = {
        adaptive_size = true
      }
    },
}
