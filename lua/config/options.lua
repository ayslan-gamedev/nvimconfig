vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt


-- NAVIGATION

-- cursor
opt.cursorline = true

-- numbersa
opt.relativenumber = false
opt.number = true

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register


-- IDENTATION
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- APARANCE --

-- background
vim.opt.background = "dark"
vim.cmd[[highlight Normal guibg=NONE ctermbg=NONE]]
vim.cmd[[highlight NonText guibg=NONE ctermbg=NONE]]
vim.cmd[[highlight LineNr guibg=NONE ctermbg=NONE]]
vim.cmd[[highlight SignColumn guibg=NONE ctermbg=NONE]]

-- number colors
vim.cmd[[highlight LineNr guifg=#D2FF72]]
vim.cmd[[highlight CursorLineNr guifg=#15B392]] 


