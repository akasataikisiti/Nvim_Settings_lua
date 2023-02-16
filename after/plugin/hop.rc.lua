local status, hop = pcall(require, "hop")
if (not status) then return end

hop.setup({
  keys = 'etovxqpdygfblzhckisuran'
})

vim.keymap.set('n', '<C-f>', ':HopChar1 <CR>')
vim.keymap.set('n', '<C-l>', ':HopLine <CR>')
