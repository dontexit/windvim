local cmp = require'cmp'
cmp.setup{
	sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
    },
    mapping = {
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p>'] = cmp.mapping.select_prev_item(),
    },
}
