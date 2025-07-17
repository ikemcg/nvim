local set = vim.keymap.set

-- paste toggle
set("n", "<leader>p", ":set paste!<CR>", { silent = true, desc = "Toggle paste" })
set("i", "<leader>p", ":set paste!<CR>", { silent = true, desc = "Toggle paste" })

set("n", "<C-n>", ":bnext<CR>", { silent = true, desc = "Move to next buffer" })
set("n", "<C-p>", ":bprevious<CR>", { silent = true, desc = "Move to previous buffer" })

-- clear highlights on search when pressing <Esc> in normal mode
set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- exit terminal mode - won't work in all terminal emulators
set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

--  use CTRL+<hjkl> to switch between windows
--  See `:help wincmd` for a list of all window commands
set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
