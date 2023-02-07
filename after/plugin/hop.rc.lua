local status, hop = pcall(require, "hop")
if (not status) then return end

hop.setup({
  keys = 'etovxqpdygfblzhckisuran'
})

vim.keymap.set('n', ';f', ':HopChar1 <CR>')
vim.keymap.set('n', ';l', ':HopLine <CR>')
