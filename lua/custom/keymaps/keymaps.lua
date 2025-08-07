-- lua/config/keymaps.lua

vim.keymap.set('n', '<leader>ee', vim.diagnostic.goto_prev, { desc = 'Browse errors' })

vim.keymap.set('n', '<leader>pf', '<C-^>', { desc = 'Switch to previous buffer' })

vim.keymap.set('n', '<leader>O', ':lua MiniFiles.open()<CR>', {
  desc = 'Open Mini Files',
  noremap = true,
  silent = true,
})
