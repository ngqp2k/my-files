set nu
set rnu
set ts=4
set sw=4
set ai
set si
set mouse=a
set cb=unnamedplus
set hls

inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap {{ {
inoremap {} {}

autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $

nmap <Leader>qq :r ~/cp/main.cpp<CR>
nmap <Leader>ww :e $MYVIMRC<CR>
