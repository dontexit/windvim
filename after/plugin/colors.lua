function apply_theme(color)
	color = color or "catppuccin-mocha"
	vim.cmd.colorscheme(color)
    vim.cmd("hi Normal guibg=black ctermbg=black")
    -- vim.cmd("colorscheme gruvbox")
    vim.cmd("set termguicolors")
    vim.cmd([[ hi NormalNC guibg=#0d1117 ctermbg=234 ]])
end
apply_theme()

