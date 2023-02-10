local opts = { noremap = true, silent = true }

vim.g.translate_source = "en"
vim.g.translate_target = "ja"
vim.g.translate_winsize = "10"


vim.keymap.set('v', '<F3>', ':Translate<CR>', opts)
vim.keymap.set('v', '<F4>', ':Translate!<CR>', opts)
