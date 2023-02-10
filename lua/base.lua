vim.cmd('autocmd!')

vim.scriptencoding = 'utf-8'
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true
vim.opt.autoindent = true
vim.opt.hlsearch = true
vim.opt.showcmd = true
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.expandtab = true
vim.opt.scrolloff = 10
-- vim.opt.shell = 'zsh'
-- VimVim
vim.opt.backupskip = '/tmp/*,/private/tmp/*'
vim.opt.inccommand = 'split'
vim.opt.ignorecase = true
vim.opt.smarttab = true
vim.opt.breakindent = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false -- No wrap lines
vim.opt.backspace = 'start,eol,indent'
vim.opt.path:append { '**' } -- Find files - Search down into subfolders
vim.opt.wildignore:append { '*/node_modules/*' }
vim.opt.swapfile = false

-- Under curl
vim.cmd([[let &t_Cs = "\e[4:3m"]])
vim.cmd([[let &t_Ce = "\e[4:0m"]])
-- but this doesn't work on iTerm2

vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})

-- コメント自動挿入オプション有効化 -> ゆくゆくは拡張子ごとに設定したい
vim.opt.formatoptions:append { 'r' }
