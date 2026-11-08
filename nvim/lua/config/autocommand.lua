vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

vim.api.nvim_create_autocmd('BufWritePre', {
  pattern = { '*.c', '*.cpp', '*.cc', '*.h', '*.hpp' },
  callback = function()
    local view = vim.fn.winsaveview()
    vim.cmd 'silent keepjumps %!clang-format'
    vim.fn.winrestview(view)
  end,
})
