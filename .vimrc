syntax on
syntax enable
set nu
set rnu
set ts=4
set sw=4
set ai
set si
set mouse=a
set cb=unnamedplus
set hls
set belloff=all
set gfn=JetBrains_Mono:h13:cANSI:qDRAFT
set scrolloff=8
set guioptions=

imap { {}<Left>
imap {<CR> {<CR>}<Esc>O
imap {{ {
imap {} {}

autocmd filetype cpp nnoremap <F9> :w <bar> !g++ -std=c++14 % -o %:r<CR>
autocmd filetype cpp nnoremap <F10> :!%:r<CR>

nmap <Leader>qq :r ~\main.cpp<CR>
nmap <Leader>db :r ~\debug.cpp<CR>
nmap <Leader>ww :e $MYVIMRC<CR>

nmap<silent> <C-J> <C-W><C-J>
nmap<silent> <C-K> <C-W><C-K>
nmap<silent> <C-L> <C-W><C-L>
nmap<silent> <C-H> <C-W><C-H>
