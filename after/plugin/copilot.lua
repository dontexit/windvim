local opts = { noremap = true, silent = true }

-- Copilot
vim.api.nvim_set_keymap('n', '<leader>cp', '<cmd>lua require("nvim-autopairs.completion.copilot").start()<CR>', opts)
 
vim.keymap.set('i', '<C-l', '<Plug>(copilot-accept-word)')
vim.keymap.set('i', '<C-L>', '<Plug>(copilot-accept-line)')
vim.keymap.set('i', '<C-d>', '<Plug>(copilot-dismiss)')
vim.keymap.set('i', '<C-n>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<C-p>', '<Plug>(copilot-previous)')
vim.keymap.set('i', '<C-f>', '<Plug>(copilot-suggest)')


