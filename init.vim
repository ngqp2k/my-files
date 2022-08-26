syntax on
syntax enable
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
set scrolloff=8
set cursorline

nmap <Leader>qq :r ~\main.cpp<CR>
nmap <Leader>ww :e $MYVIMRC<CR>

nmap<silent> <S-j> :bnext<CR>
nmap<silent> <S-k> :bprevious<CR>

nmap<silent> <C-J> <C-W><C-J>
nmap<silent> <C-K> <C-W><C-K>
nmap<silent> <C-L> <C-W><C-L>
nmap<silent> <C-H> <C-W><C-H>

call plug#begin()
	Plug 'jiangmiao/auto-pairs'
	Plug 'joshdick/onedark.vim'
	Plug 'akinsho/toggleterm.nvim', {'tag' : 'v2.*'}
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

colorscheme onedark

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
EOF
