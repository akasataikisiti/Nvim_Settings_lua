local status, comment = pcall(require, 'nvim_comment')
if (not status) then
  print('no comment')
  return
end

print('test comment')

comment.setup {}
