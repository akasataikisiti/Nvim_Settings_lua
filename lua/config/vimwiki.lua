local status, wiki = pcall(require, "vimwiki")
if (not status) then
  print('not vimwiki')
  return
end

print('load vimwiki')

vim.g.vimwiki_list = {
  {
    path   = '~/',
    syntax = 'markdown',
    ext    = '.md',
  }
}
vim.g.vimwiki_ext2syntax = {
  ['.md'] = 'markdown',
  ['.markdown'] = 'markdown',
  ['.mdown'] = 'markdown',
}
