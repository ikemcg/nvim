return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
    config = function()
      local builtin = require('telescope.builtin')
      local set = vim.keymap.set

      require("telescope").setup({
        defaults = {
          layout_strategy = 'vertical',
          layout_config = { preview_height = 0.4 }, -- Sets preview to 40% of the window width
          --[[
          layout_config = {
            horizontal = {
              preview_cutoff = 0,
            },
          },
          --]]
        },
      })

      set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

      set(
        'n',
        '<S-h>',
        '<cmd>Telescope buffers sort_mru=true sort_lastused=true initial_mode=normal theme=ivy<cr>',
        { desc = "[P]Open telescope buffers" }
      )
    end,
  }
}
