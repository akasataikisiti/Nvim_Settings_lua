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


--
-- 余計な初期プラグインの読み込み回避 (何かしら動かなくなったらここ消す)
-- https://zenn.dev/kawarimidoll/articles/8172a4c29a6653
vim.g.did_install_default_menus = 1
vim.g.did_install_syntax_menu   = 1
vim.g.did_indent_on             = 1
vim.g.did_load_ftplugin         = 1
vim.g.loaded_2html_plugin       = 1
vim.g.loaded_gzip               = 1
vim.g.loaded_man                = 1
vim.g.loaded_matchit            = 1
vim.g.loaded_matchparen         = 1
vim.g.loaded_netrwPlugin        = 1 -- 標準ファイラ
vim.g.loaded_remote_plugins     = 1
vim.g.loaded_shada_plugin       = 1
vim.g.loaded_spellfile_plugin   = 1
vim.g.loaded_tarPlugin          = 1
vim.g.loaded_tutor_mode_plugin  = 1 -- Tutorial mode
vim.g.loaded_zipPlugin          = 1
vim.g.skip_loading_mswin        = 1 -- MSwin用の何か
