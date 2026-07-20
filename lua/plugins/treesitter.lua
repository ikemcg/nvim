return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false, -- Use the latest fixes from the main branch
    build = ":TSUpdate", -- Automatically update parsers when the plugin updates
    lazy = false, -- Core plugin feature; must load on startup
    config = function()
      -- The configuration API uses 'nvim-treesitter.configs'
      local configs = require("nvim-treesitter.config")

      configs.setup({
        -- A list of parser names to install automatically upon setup
        ensure_installed = {
					"bash",
					"diff",
					"html",
					"css",
					"lua",
					"luadoc",
					"markdown",
					"markdown_inline",
					"query",
					"php",
					"javascript",
					"typescript",
					"json",
					"terraform",
					"vue",
        },

        -- Install missing parsers silently on the fly when opening unhandled files
        auto_install = true,

        -- Advanced syntax highlighting config
        highlight = {
          enable = true, -- Enable native treesitter-based text highlighting
          additional_vim_regex_highlighting = false, -- Disable slow Vim regex fallbacks
        },

        -- Semantic code indentation config
        indent = {
          enable = true
        },
      })
    end,
  }
}
