local cmp = require'cmp'
cmp.setup{
    sources = {
        { name = 'nvim_lsp' },
        { name = 'buffer' },
        {  name= 'nvim-emmet',
        option = {
            filetypes = {...}, -- Add the desired filetypes
        },
    }
},
mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.close(),
    ['<C-n>'] = cmp.mapping.select_next_item(),
    ['<C-p>'] = cmp.mapping.select_prev_item(),
},
}
