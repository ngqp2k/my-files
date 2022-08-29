syntax enable
syntax on

set nu
set rnu
set ts=2
set sw=2
set ai
set si
set mouse=a
set cb=unnamedplus
set hls
set belloff=all
set scrolloff=2
set cursorline

nmap <Leader>qq :r ~\main.cpp<CR>
nmap <Leader>ww :e $MYVIMRC<CR>

nmap<silent> <S-h> :bnext<CR>
nmap<silent> <S-l> :bprevious<CR>

nmap<silent> <C-J> <C-W><C-J>
nmap<silent> <C-K> <C-W><C-K>
nmap<silent> <C-L> <C-W><C-L>
nmap<silent> <C-H> <C-W><C-H>

map<silent> <F9> :w<CR>:Test<CR>

call plug#begin()
	Plug 'jiangmiao/auto-pairs'
	Plug 'navarasu/onedark.nvim'
	Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
	Plug 'nvim-treesitter/nvim-treesitter'
	Plug 'searleser97/cpbooster.vim'
	Plug 'terrortylor/nvim-comment'
call plug#end()


let g:onedark_config={
			\'style': 'darker'
			\}

colorscheme onedark
set completeopt=menu,menuone,noselect

lua << EOF
vim.opt.showmode = false 

local keymap = vim.keymap.set
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

require("lualine").setup()

require("toggleterm").setup{
	size = 5,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shade_terminals = true,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
}

require'nvim-treesitter.configs'.setup {
	ensure_installed = {},
	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = true,
	},
}
require('nvim_comment').setup({
	line_mapping = "<leader>cc",
	comment_chunk_text_object = "ic"
})
EOF
