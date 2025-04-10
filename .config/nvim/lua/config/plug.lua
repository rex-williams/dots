local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')
	--Plug 'theprimeagen/harpoon'
	Plug 'ap/vim-css-color'
	Plug 'junegunn/fzf.vim'
	Plug 'mbbill/undotree'
	Plug 'mofiqul/dracula.nvim'
	Plug 'neovim/nvim-lspconfig'
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-treesitter/playground'
	Plug 'tpope/vim-fugitive'
	Plug 'vim-airline/vim-airline'
	Plug('junegunn/fzf', { ['do'] = function() vim.fn['fzf#install']() end })
	Plug('nvim-treesitter/nvim-treesitter', { ['do'] = function() vim.cmd['TSUpdate']() end })
vim.call('plug#end')

-- Color schemes should be loaded after plug#end().
-- We prepend it with 'silent!' to ignore errors when it's not yet installed.
vim.cmd('silent! colorscheme dracula')
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
