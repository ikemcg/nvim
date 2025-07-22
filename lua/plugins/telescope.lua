return {
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      {
        'nvim-telescope/telescope-fzf-native.nvim',

        -- `build` is used to run some command when the plugin is installed/updated.
        -- This is only run then, not every time Neovim starts up.
        build = 'make',

        -- `cond` is a condition used to determine whether this plugin should be
        -- installed and loaded.
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
      },
      { 'BurntSushi/ripgrep' },
      { 'nvim-telescope/telescope-ui-select.nvim' },
      { 'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font },
    },
    event = 'VimEnter',
    config = function()
      require("telescope").setup({
        defaults = {
          -- layout_strategy = 'vertical',
          -- layout_config = { preview_height = 0.4 }, -- Sets preview to 40% of the window width
        },
        pickers = {
          find_files = {
            theme = "ivy"
          }
        },
        extensions = {
          ['ui-select'] = {
            require('telescope.themes').get_dropdown(),
          },
          fzf = {}
        }
      })

      -- Enable Telescope extensions if they are installed
      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')

      local set = vim.keymap.set
      local builtin = require('telescope.builtin')
      set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
      set('n', '<leader>fk', builtin.keymaps, { desc = '[S]earch [K]eymaps' })
      set('n', '<leader>fd', builtin.diagnostics, { desc = '[S]earch [D]iagnostics' })
      set('n', '<leader>fw', builtin.grep_string, { desc = '[S]earch current [W]ord' })
      set('n', '<leader>ft', builtin.treesitter, { desc = 'Telescope treesitter' })
      set('n', '<leader>fr', builtin.resume, { desc = '[S]earch [R]esume' })

      set('n', '<S-h>', function()
        builtin.buffers { sort_mru = true, sort_lastused = true, initial_mode = 'normal', theme = 'ivy' }
      end, { desc = "[P]Open telescope buffers" })

      -- Slightly advanced example of overriding default behavior and theme
      vim.keymap.set('n', '<leader>/', function()
        -- You can pass additional configuration to Telescope to change the theme, layout, etc.
        builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
          winblend = 10,
          previewer = false,
        })
      end, { desc = '[/] Fuzzily search in current buffer' })

      -- Shortcut for searching your Neovim configuration files
      vim.keymap.set('n', '<leader>fn', function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
      end, { desc = '[F]ind [N]eovim files' })
    end,
  }
}
