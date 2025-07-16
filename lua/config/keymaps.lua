local set = vim.keymap.set

-- paste toggle
set("n", "<leader>p", ":set paste!<CR>", { silent = true, desc = "Toggle paste" })
set("i", "<leader>p", ":set paste!<CR>", { silent = true, desc = "Toggle paste" })

set("n", "<C-l>", ":bnext<CR>", { silent = true, desc = "Move to next buffer" })
set("n", "<C-h>", ":bprevious<CR>", { silent = true, desc = "Move to previous buffer" })
