local builtin = require('telescope.builtin')

local extensions = require('telescope').extensions
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n','<leader>bs',builtin.symbols,{})
vim.keymap.set('n','<leader>ds',builtin.lsp_document_symbols,{})
vim.keymap.set('n','<leader>ws',builtin.lsp_workspace_symbols,{})
vim.keymap.set('n','<leader>t',builtin.colorscheme,{})
vim.keymap.set('n','<leader>r',builtin.registers,{})
vim.keymap.set('n','<leader>b',builtin.buffers,{})
vim.keymap.set('n', '<leader>fw', function()
	builtin.grep_string({search = vim.fn.input("Grep > ") });
end
)
