vim.g.mapleader= " "



local opts = { noremap = true, silent = true }

vim.keymap.set("n", "Cp","<cmd>PickColor<cr>", opts)
vim.keymap.set("n", "Ci", "<cmd>PickColorInsert<cr>", opts)
vim.keymap.set("n","<leader>e",vim.cmd.Ex)


vim.keymap.set("n","<leader>vs", "<cmd>:VenvSelect<cr>")

vim.keymap.set("n","<leader>vc", "<cmd>:VenvSelectCached<cr>")
		
		



vim.keymap.set("n","fe",":NvimTreeToggle<cr>")
vim.keymap.set("n","ff",":NvimTreeFocus<cr>")
vim.keymap.set("n","fh",":NvimTreeFindFile<cr>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["*Y]])
vim.keymap.set("n", "<leader>y", [["*y]])
vim.keymap.set("n", "<leader>p", [["*p]])
vim.keymap.set("n", "<leader>P", [["*P]])
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set("n", "<leader>Q", "<C-\\><C-n>")
vim.keymap.set("n","<leader>bd",":bd<CR>")
vim.keymap.set("n","<leader>bn",':bprevious<CR>')
vim.keymap.set("n","<leader>bp",':bnext<CR>')
vim.keymap.set("n","<leader>sv",'<C-W>v')
vim.keymap.set("n","<leader>sh",'<C-W>s')




vim.keymap.set('n', '<leader>qq','<C-W>q')
vim.keymap.set("n","<leader>qa",":qa!<CR>")
vim.keymap.set("n","<leader>ww",":w<CR>")
vim.keymap.set("n","<leader>wa",":wq!<CR>")







vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>K", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>J", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n","!f",":NvimTreeFocus<CR>")
-- vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
-- vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

