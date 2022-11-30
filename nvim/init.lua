-- Plugins
require("plugins")
require("impatient")

-- Keybinds
require("binds")

-- Colorscheme
local onedark = require("onedark")
onedark.setup {
	transparent = true,
	code_style = {
		comments = "none"
	},
}
onedark.load()

-- Status line
local custom_onedark = require("lualine.themes.onedark")
custom_onedark.normal.c.bg = nil
require("lualine").setup {
	options = {
		theme = custom_onedark,
		icons_enabled = false,
	},
	sections = {
		lualine_a = {
			{ "mode", fmt = function(str) return str:sub(1,1) end }
		},
		lualine_b = { "branch" },
        lualine_c = { "filename" },
		lualine_x = { },
        lualine_y = { "filetype" },
        lualine_z = { "location" },
	},
}

-- Syntax highlighting
require("nvim-treesitter.configs").setup {
	ensure_installed = { "c", "cpp", "lua", "rust", "python", "haskell" },
	sync_install = true,
	highlight = {
		enable = true,
	},
	indent = {
		enable = true
	}
}

-- Autopair
require("nvim-autopairs").setup{}

-- Folding
vim.wo.foldmethod = "expr"
vim.wo.foldexpr = "nvim_treesitter#foldexpr()"
vim.wo.foldenable = false

-- Tab settings
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Line number
vim.opt.relativenumber = true
vim.opt.numberwidth = 4

-- Enable mouse
vim.opt.mouse = "a"

-- Generic settings
vim.opt.termguicolors = true
vim.opt.splitright = true
vim.opt.showmode = false
vim.opt.scrolloff = 8
