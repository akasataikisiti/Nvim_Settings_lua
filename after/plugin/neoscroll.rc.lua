local status, neoscroll = pcall(require, 'neoscroll')
if (not status) then return end

neoscroll.setup({
  -- <c-y>と<c-f>は使わないようにした
  mappings = { '<C-u>', '<C-d>', '<C-b>', '<C-e>', 'zt', 'zz', 'zb' },
})
