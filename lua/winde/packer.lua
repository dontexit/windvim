-- This file can be loaded by calling `lua require('plugins')` from your init.vim
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()


return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.4',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use('nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate' })
    use 'nvim-treesitter/playground'
    use 'hrsh7th/nvim-cmp'
    use "mbbill/undotree"
    use "tpope/vim-fugitive"
    use { 'github/copilot.vim' }
    use { "ellisonleao/gruvbox.nvim" }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
        }
    }
    use 'nvim-lua/plenary.nvim'
    use 'ThePrimeagen/harpoon'
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use({
        "ziontee113/color-picker.nvim",
        config = function()
            require("color-picker")
        end,
    })


    use 'chr4/nginx.vim';

    use 'nvim-tree/nvim-web-devicons'
    use 'mattn/emmet-vim'
    use 'dcampos/cmp-emmet-vim'

    use 'ray-x/aurora'
    use 'folke/tokyonight.nvim'
    use { 'nyoom-engineering/oxocarbon.nvim' }
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'Mofiqul/dracula.nvim'

    use 'HiPhish/rainbow-delimiters.nvim'

    use { 'nvim-tree/nvim-tree.lua',
        config = function()
            require('nvim-tree').setup(
                {
                    sort_by = "case_sensitive",
                    view = {
                        width = 30,
                    },
                    renderer = {
                        group_empty = true,
                    },
                    filters = {
                        dotfiles = true,
                    },
                }
            )
        end,

    }

    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
    use "lukas-reineke/indent-blankline.nvim"
    use {
        'rmagatti/goto-preview',
        config = function()
            require('goto-preview').setup {}
        end
    }
    use { 'brenoprata10/nvim-highlight-colors',
        config = function()
            require('nvim-highlight-colors').setup()
        end,
    }
    -- use {
    -- "smoka7/multicursors.nvim",
    -- event = "VeryLazy",
    -- dependencies = {
    --     'smoka7/hydra.nvim',
    -- },
    -- opts = {},
    -- cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    -- keys = {
    --         {
    --             mode = { 'v', 'n' },
    --             '<Leader>m',
    --             '<cmd>MCstart<cr>',
    --             desc = 'Create a selection for selected text or word under the cursor',
    --         },
    --     },
    -- }
    use {
        "linux-cultist/venv-selector.nvim",
        requires = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
        config = function()
            require("venv-selector").setup({

                -- auto_refresh (default: false). Will automatically start a new search every time VenvSelect is opened.
                -- When its set to false, you can refresh the search manually by pressing ctrl-r. For most users this
                -- is probably the best default setting since it takes time to search and you usually work within the same
                -- directory structure all the time.
                auto_refresh = false,

                -- search_venv_managers (default: true). Will search for Poetry and Pipenv virtual environments in their
                -- default location. If you dont use the default location, you can
                search_venv_managers = true,

                -- search_workspace (default: true). Your lsp has the concept of "workspaces" (project folders), and
                -- with this setting, the plugin will look in those folders for venvs. If you only use venvs located in
                -- project folders, you can set search = false and search_workspace = true.
                search_workspace = true,

                -- path (optional, default not set). Absolute path on the file system where the plugin will look for venvs.
                -- Only set this if your venvs are far away from the code you are working on for some reason. Otherwise its
                -- probably better to let the VenvSelect search for venvs in parent folders (relative to your code). VenvSelect
                -- searchs for your venvs in parent folders relative to what file is open in the current buffer, so you get
                -- different results when searching depending on what file you are looking at.
                -- path = "/home/username/your_venvs",

                -- search (default: true) - Search your computer for virtual environments outside of Poetry and Pipenv.
                -- Used in combination with parents setting to decide how it searches.
                -- You can set this to false to speed up the plugin if your virtual envs are in your workspace, or in Poetry
                -- or Pipenv locations. No need to search if you know where they will be.
                search = true,

                -- dap_enabled (default: false) Configure Debugger to use virtualvenv to run debugger.
                -- require nvim-dap-python from https://github.com/mfussenegger/nvim-dap-python
                -- require debugpy from https://github.com/microsoft/debugpy
                -- require nvim-dap from https://github.com/mfussenegger/nvim-dap
                dap_enabled = false,

                -- parents (default: 2) - Used when search = true only. How many parent directories the plugin will go up
                -- (relative to where your open file is on the file system when you run VenvSelect). Once the parent directory
                -- is found, the plugin will traverse down into all children directories to look for venvs. The higher
                -- you set this number, the slower the plugin will usually be since there is more to search.
                -- You may want to set this to to 0 if you specify a path in the path setting to avoid searching parent
                -- directories.
                parents = 2,

                -- name (default: venv) - The name of the venv directories to look for.
                name = "venv", -- NOTE: You can also use a lua table here for multiple names: {"venv", ".venv"}`

                -- fd_binary_name (default: fd) - The name of the fd binary on your system. Some Debian based Linux Distributions like Ubuntu use ´fdfind´.
                fd_binary_name = "fd",


                -- notify_user_on_activate (default: true) - Prints a message that the venv has been activated
                notify_user_on_activate = true,

            })
        end,
        event = "VimEnter", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
    }

    use({ 'projekt0n/github-nvim-theme' })
end)
