" mappings.vim

"Kill the arrow keys to force practice with hjkl
no <up> <Nop>
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
ino <up> <Nop>
ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>

" Map jk to ESC for easy hand-positioning
ino jk <esc>

" Switch between conventional/relative numbering
nnoremap <F5> :call ToggleNumbering()<CR>

" Open and source .vimrc and startup scripts
nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>em :tabe ~/.vim/startup/mappings.vim<cr>
nnoremap <leader>es :tabe ~/.vim/startup/settings.vim<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>sm :source ~/.vim/startup/mappings.vim<cr>
nnoremap <leader>ss :source ~/.vim/startup/settings.vim<cr>

" Visual block paste (see https://danielmiessler.com/study/vim/)
vnoremap . :norm.<CR>
