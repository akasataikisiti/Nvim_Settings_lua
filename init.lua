require('base')
require('highlights')
require('maps')
require('plugins')
require('globals')

local has = vim.fn.has

-- 引数が文字列で一つの時はこうやって関数に引き渡せる
local is_mac = has "mac"
local is_win = has "win32"

if is_mac == 1 then
  require('macos')
end
if is_win == 1 then
  require('windows')
end
