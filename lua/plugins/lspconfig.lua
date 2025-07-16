return {
  {
    "neovim/nvim-lspconfig",
    keys = {
      { "<leader>d", "<cmd>lua vim.diagnostic.open_float()<CR>", desc = "Show diagnostic menu" },
    },
    config = function()
      require("lspconfig").lua_ls.setup {
				settings = {
					Lua = {
						diagnostics = {
							-- Get the language server to recognize the `vim` global
							globals = {
								'vim',
								'require'
							},
						},
					},
				},
      }
    end,
  },
}
