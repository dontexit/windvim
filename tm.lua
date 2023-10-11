local terminal_buffers = {}

function add_terminal_buffers(bufnr)
    local buf_info = vim.fn.getbufinfo(bufnr)[1]
    if buf_info.bt == "terminal" then
        table.insert(terminal_buffers,bufnr)
    end
end

local function setup_terminal_buffer_hook()
    vim.api.nvim_exec([[
        augroup TerminalBufferHook
            autocmd!
            autocmd BufEnter * lua add_terminal_buffers(vim.fn.bufnr('%'))
        augroup END
    ]],false)
end

setup_terminal_buffer_hook()


-- terminal
vim.keymap.set("n","pt",function() 
    vim.api.nvim_out_write("Terminal buffers: \n")
    for i,bufnr in ipairs(terminal_buffers) do
        nvim.api.nvim_out_write(tostring(bufnr) "x" "\n")
    end

    

end)
