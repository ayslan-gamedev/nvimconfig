vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt


-- NAVIGATION

-- cursor
opt.cursorline = true

-- numbersa
opt.relativenumber = false
opt.number = true

-- wrap lines (don't break lines)
opt.wrap = false 

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register

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


