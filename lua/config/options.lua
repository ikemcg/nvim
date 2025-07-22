--  For more options, you can see `:help option-list`

local opts = {
  shiftwidth = 4,
  tabstop = 4,
  expandtab = true,
  backspace = "indent,eol,start",   -- allow backspacing over everything in insert mode
  hlsearch = true,
  termguicolors = true,
  breakindent = true,         -- enable auto indentation on wrapping lines
  mouse = 'a',                -- Enable mouse mode, can be useful for resizing splits for example
  showmode = false,           -- don't show the mode, since it's already in the status line
  history = 1000,             -- a more reasonable history
  ruler  = true,              -- show the cursor position all the time
  showcmd = true,             -- display incomplete commands
  incsearch = true,           -- do incremental searching
  wildmenu = true,            -- tab completion for opening files
  autowrite = true,           -- save on buffer switch
  wrapscan = true,            -- searches wrap around the end of the file
  autoindent = true,          -- always set autoindenting on
  smartindent = true,         -- syntax adaptive autoindenting, autoindent still needed
  number = false,             -- make line numbers default
  relativenumber = false,      -- hmm
  signcolumn = "number",      -- show line number in sign column
  ignorecase = true,          -- ignore case when searching
  smartcase = true,           -- turns off ignore case when pattern contains uppercase letter
  visualbell = true,          -- don't beep
  scrolloff = 10,             -- maintains 3 lines below cursor as cursor moved outside viewport
  undofile = true,            -- save undo history
  splitright = true,          -- how new split should be created
  splitbelow = true,
  list = true,                -- show <Tab> and <EOL>
  inccommand = 'split',       -- preview substitutions live, as you type!
}

-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end

-- Sync clipboard between OS and Neovim.
--  Schedule the setting after `UiEnter` because it can increase startup-time.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

--  listchars is set using `vim.opt` instead of `vim.o`.
--  It is very similar to `vim.o` but offers an interface for conveniently interacting with tables.
--   See `:help lua-options`
--   and `:help lua-options-guide`
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

