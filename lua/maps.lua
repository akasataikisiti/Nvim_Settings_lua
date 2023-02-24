local keymap = vim.keymap

-- Do not yank with x
keymap.set('n', 'x', '"_x')

-- Not yank commands
keymap.set('v', '<Leader>d', '"_d')
keymap.set('n', '<Leader>d', '"_d')
keymap.set('n', '<Leader>D', '"_D')

-- change active window
keymap.set('n', 'sh', '<C-w>h')
keymap.set('n', 'sk', '<C-w>k')
keymap.set('n', 'sj', '<C-w>j')
keymap.set('n', 'sl', '<C-w>l')
keymap.set('n', 'sr', '<C-w>r')
keymap.set('n', 'sR', '<C-w>R')
keymap.set('n', '<Space>', '<C-w>w')

-- change window size
keymap.set('n', 's:', '<C-w>+')
keymap.set('n', 's;', '<C-w>-')
keymap.set('n', 's>', '<C-w>>')
keymap.set('n', 's<', '<C-w><')
keymap.set('n', 's=', '<C-w>=')

-- Select all
keymap.set('n', '<C-a>', 'gg<S-v>G')

-- アクティブウィンドウの位置を変える
keymap.set('n', 'so', '<C-w><C-x>')

-- 水平分割、垂直分割をスイッチ
keymap.set('n', 'sH', '<C-w>t<C-w>H')
keymap.set('n', 'sK', '<C-w>t<C-w>K')

-- タブ移動
-- タブ１つしか無かったら新しいタブ開く、２つ以上あったら次のタブに移動

vim.api.nvim_create_user_command(
  'TabnewOrGoNext',
  function()
    if 1 == vim.fn.tabpagenr('$') then
      vim.cmd('tabedit')
    else
      vim.cmd('tabnext')
    end
  end,
  {}
)
keymap.set('n', 'gt', '<Cmd>TabnewOrGoNext <CR>')
keymap.set('n', '<leader>c', '<Cmd>tabclose <CR>')

-- 設定ファイル、チートシート、カラビナ設定ファイル開く
keymap.set('n', '<Leader>ev', ':e ~/.config/nvim/init.lua <CR>')
keymap.set('n', '<Leader>ec', ':e ~/cheatsheet/vim.txt <CR>')
keymap.set('n', '<Leader>ek', ':e ~/.config/karabiner/karabiner.json <CR>')

-- 選択範囲の移動
keymap.set('v', '<c-j>', ":m '>+1<CR>gv=gv")
keymap.set('v', '<c-k>', ":m '<-2<CR>gv=gv")

-- select delete paste
keymap.set("x", "<leader>p", "\"_dP")

-- ターミナルを開く
vim.cmd [[
:tnoremap <c-[> <C-\><C-n>
command! -nargs=* Ut split | wincmd j | resize 20 | terminal <args>
command! -nargs=* T vsplit | wincmd l | terminal <args>
autocmd TermOpen * startinsert
]]
