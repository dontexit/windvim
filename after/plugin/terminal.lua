vim.g.mapleader= " "

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("n", "<leader>;",":term<cr>")
-- vim.keymap.set("n","<leader>1", function() 
--     for _,buf in ipairs(vim.fn.getbufferinfo({buffloaded = true})) do
--         if vim.fn.bufname(buf.bufnr) == "term://1" then 
--             vim.cmd("buffer 1")
--         end
--         vim.cmd(":term")
--
-- end)
vim.keymap.set("n","<leader>1", ":term 1")


