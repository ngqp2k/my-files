set nu
set rnu
set ts=4
set sw=4
set ai
set si
set mouse=a
set cb=unnamedplus
set hls

autocmd filetype cpp nnoremap <C-C> :s/^\(\s*\)/\1\/\/<CR> :s/^\(\s*\)\/\/\/\//\1<CR> $

imap { {}<Left>
imap {<CR> {<CR>}<Esc>O
imap {{ {
imap {} {}

imap jk <Esc>

nmap <Leader>qq :r ~/cp/main.cpp<CR>kdd35jo<CR>
nmap <Leader>ww :e $MYVIMRC<CR>

nmap<silent> <C-J> <C-W><C-J>
nmap<silent> <C-K> <C-W><C-K>
nmap<silent> <C-L> <C-W><C-L>
nmap<silent> <C-H> <C-W><C-H>
