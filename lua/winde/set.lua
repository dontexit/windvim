vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.api.nvim_command('autocmd BufNewFile,BufRead *.conf set filetype=nginx')
vim.api.nvim_command('autocmd BufNewFile,BufRead *DockerFile set filetype=docker')
vim.api.nvim_command('autocmd BufNewFile,BufRead *docker-compose.yml set filetype=yaml.docker-compose')
vim.api.nvim_command('autocmd BufNewFile,BufRead *docker-compose.yaml set filetype=yaml.docker-compose')
vim.api.nvim_command('autocmd BufNewFile,BufRead *compose.yaml set filetype=yaml.docker-compose')
vim.api.nvim_command('autocmd BufNewFile,BufRead *compose.yml set filetype=yaml.docker-compose')
vim.api.nvim_command('autocmd BufNewFile,BufRead *.rs set filetype=rust')


-- vim.api.nvim_set_var('python3_host_prog', 'C:\\Users\\Edwin\\AppData\\Local\\Programs\\Python\\Python311\\python.exe')


