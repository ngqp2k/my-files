set nu
set rnu
set ts=4
set sw=4
set ai
set si
set mouse=a
set cb=unnamedplus
set hls
set noshowmode
"set termguicolors

nmap<silent> <C-J> <C-W><C-J>
nmap<silent> <C-K> <C-W><C-K>
nmap<silent> <C-L> <C-W><C-L>
nmap<silent> <C-H> <C-W><C-H>

nmap <Leader>qq :r ~\main.cpp<CR>
nmap <Leader>db :r ~\debug.cpp<CR>
nmap <Leader>ww :e $MYVIMRC<CR>
nmap <Leader>h :noh<CR>

call plug#begin()
	Plug 'jiangmiao/auto-pairs'
	Plug 'nvim-lualine/lualine.nvim'
	Plug 'ishan9299/nvim-solarized-lua'
call plug#end()

lua << END
require('lualine').setup()
END

colorscheme solarized-flat 
