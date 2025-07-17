-- Always map leader first
vim.g.mapleader = ','
vim.g.maplocalleader = '\\'

vim.g.have_nerd_font = true

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("config.keymaps")
require("config.options")
require("config.autocmd")
require("config.lazy")
