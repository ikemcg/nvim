local opts = {
	shiftwidth = 4,
	tabstop = 4,
	expandtab = true,
	wrap = false,
  backspace = "indent,eol,start",   -- allow backspacing over everything in insert mode
  hlsearch = true,
  termguicolors = true,
  showmode = true,            -- always show what mode we're inj
  history = 1000,             -- a more reasonable history
  ruler  = true,              -- show the cursor position all the time
  showcmd = true,             -- display incomplete commands
  incsearch = true,           -- do incremental searching
  wildmenu = true,            -- tab completion for opening files
  autowrite = true,           -- save on buffer switch
  clipboard = "unnamed",      -- enables clipboard sharing in osx
  wrapscan = true,
  autoindent = true,          -- always set autoindenting on
  smartindent = true,         -- syntax adaptive autoindenting, autoindent still needed
  signcolumn = "number",      -- show line number in sign column
  ignorecase = true,          -- ignore case when searching
  smartcase = true,           -- turns off ignore case when pattern contains uppercase letter
  visualbell = true,          -- don't beep
  title = true,               -- display file name in osx terminal's top window bar
  hidden = true,              -- allows files in buffers to remain open; also, required for vim-coc
  scrolloff = 3,              -- maintains 3 lines below cursor as cursor moved outside viewport
}

-- Set options from table
for opt, val in pairs(opts) do
	vim.o[opt] = val
end
