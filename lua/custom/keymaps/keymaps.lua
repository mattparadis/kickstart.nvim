-- lua/config/keymaps.lua

vim.keymap.set('n', '<leader>ee', vim.diagnostic.goto_prev, { desc = 'Browse errors' })

vim.keymap.set('n', '<leader>pf', '<C-^>', { desc = 'Switch to previous buffer' })

vim.keymap.set('n', '<leader>F', function()
  require('mini.files').open(vim.api.nvim_buf_get_name(0))
end, { desc = 'MiniFiles nella dir del buffer' })

vim.keymap.set('n', '<leader>O', ":Oil<CR>", {
  desc = 'Open Oil',
  noremap = true,
  silent = true,
})

vim.keymap.set('n', '<leader>ff', ":Telescope flutter commands<CR>", {
  desc = 'Flutter commands',
  noremap = true,
  silent = true,
})
