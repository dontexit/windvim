-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'folke/tokyonight.nvim'
    use {'nyoom-engineering/oxocarbon.nvim'}
    use { "catppuccin/nvim", as = "catppuccin" }
    use 'Mofiqul/dracula.nvim'
    use ('nvim-treesitter/nvim-treesitter',
        {run= ':TSUpdate'})
    use 'nvim-treesitter/playground'
    use 'hrsh7th/nvim-cmp'
    use "mbbill/undotree"
    use "tpope/vim-fugitive"
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {                                      -- Optional
            'williamboman/mason.nvim',
            run = function()
                pcall(vim.cmd, 'MasonUpdate')
            end,
        },
        {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}
use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
}
use {
    's1n7ax/nvim-terminal',
    config = function()
        vim.o.hidden = true
        require('nvim-terminal').setup()
    end,
}
use ({"ziontee113/color-picker.nvim",
    config = function()
        require("color-picker")
    end,
})
use 'nvim-tree/nvim-web-devicons'
use 'mattn/emmet-vim'
use 'dcampos/cmp-emmet-vim'
use 'HiPhish/nvim-ts-rainbow2'
use 'ray-x/aurora' 
use {'nvim-tree/nvim-tree.lua',
    config=function()
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
    require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
  end
}
use {"lukas-reineke/indent-blankline.nvim",
    config = function ()
        require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
    end
}

use {'brenoprata10/nvim-highlight-colors',
    config=function()
        require('nvim-highlight-colors').setup()
    end,
}
use {
  'nvim-lualine/lualine.nvim',
  config=function()
    require('lualine').setup {
  options = {
    icons_enabled = true,
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}
end,
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use {
  'kdheepak/tabline.nvim',
  config = function()
    require'tabline'.setup {
      -- Defaults configuration options
      enable = true,
      options = {
        section_separators = {'*', '*'},
        component_separators = {'', ''},
      -- If lualine is installed tabline will use separators configured in lualine by default.
      -- These options can be used to override those settings.
        max_bufferline_percent = 66, -- set to nil by default, and it uses vim.o.columns * 2/3
        show_tabs_always = false, -- this shows tabs only when there are more than one tab or if the first tab is named
        show_devicons = true, -- this shows devicons in buffer section
        show_bufnr = false, -- this appends [bufnr] to buffer section,
        show_filename_only = true, -- shows base filename only instead of relative path in filename
        modified_icon = "+ ", -- change the default modified icon
        modified_italic = false, -- set to true by default; this determines whether the filename turns italic if modified
        show_tabs_only = false, -- this shows only tabs instead of tabs + buffers
      }
    }
    vim.cmd[[
      set guioptions-=e " Use showtabline in gui vim
      set sessionoptions+=tabpages,globals " store tabpages and globals in session
    ]]
  end,
  requires = { { 'hoob3rt/lualine.nvim', opt=true }, {'kyazdani42/nvim-web-devicons', opt = true} }
}
use {
  'barrett-ruth/live-server.nvim',
  run = 'yarn global add live-server',
  config = function()
    require('live-server').setup(opts)   
  end
}
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
	end;
	event = "VimEnter", -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
}
end)
