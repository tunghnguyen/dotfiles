vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
    use
    {
        -- Packer manages itself
		{ 'wbthomason/packer.nvim' },

		-- Faster loading
		{ 'nathom/filetype.nvim' },
		{ 'lewis6991/impatient.nvim' },

		-- Colorscheme
		{ 'navarasu/onedark.nvim' },

		-- Status line
		{ 'nvim-lualine/lualine.nvim' },

        -- Syntax highlighting
		{ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },

        -- Powerful autopair
		{ 'windwp/nvim-autopairs' },
    }
end)
