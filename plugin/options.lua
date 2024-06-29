local opt = vim.opt -- helper variable for better readability..

--vim.g.loaded_matchparen = 1

opt.number = true
opt.relativenumber = true

opt.completeopt = { "menu", "menuone", "noinsert" }
opt.updatetime = 250
opt.equalalways = false

opt.pumheight = 12

-- Splits
opt.splitbelow = true
opt.splitright = true

--opt.background = 'dark'
opt.guicursor = ""

-- Search
opt.ignorecase = true
opt.smartcase = true

opt.swapfile = false

opt.gcr = "a:blinkon0"
opt.scrolloff = 3
opt.showmode = false
opt.timeoutlen = 200

-- Tabs and spaces
opt.autoindent = true
opt.cindent = true
opt.wrap = true

-- TODO: filetype dependent tabs.. make :)
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true

opt.breakindent = true
opt.showbreak = string.rep(" ", 3) -- Make it so that long lines wrap smartly
opt.linebreak = true

opt.clipboard = "unnamedplus"
opt.belloff = "all"
opt.inccommand = "split"
opt.shada = { "!", "'1000", "<50", "s10", "h" }

opt.termguicolors = true

-- statusline
--opt.winbar = "%=%m %f"
--opt.laststatus = 3

-- Some stuff taken from TJ... FIXME
opt.formatoptions = opt.formatoptions
  + "c" -- In general, I like it when comments respect textwidth
  + "q" -- Allow formatting comments w/ gq
  - "o" -- O and o, don't continue comments
  + "r" -- But do continue when pressing enter.
  + "n" -- Indent past the formatlistpat, not underneath it.
  + "j" -- Auto-remove comments if possible.
  - "2" -- I'm not in gradeschool anymore
--- "a"  -- Auto formatting is BAD.
--- "t"  -- Don't auto format my code. I got linters for that.

opt.joinspaces = false

-- Ignore non-human :) files
opt.wildignore = opt.wildignore + { "*.o", "*~", "*.pyc", "*pycache*" }
