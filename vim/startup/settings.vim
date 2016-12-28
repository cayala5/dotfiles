" settings.vim

"" essential
set nocompatible
let g:platform = GetPlatform()

"" encoding
scriptencoding utf-8
set encoding=utf-8

"" reading and writing files
set modeline
set fileformats=unix,mac,dos
set backup
set backupdir=~/.vim/backup
set autowrite
set autoread

"" the swap file
set directory=.,~/.vim/tmp

"" command line editing
set history=100
set wildmode=list:longest,full
set wildmenu
set wildignore=*/tmp/*,*.swp,*.o,*.gch,*.pyc,*.jpg,*.gif,*.png,*.a,*.so
if has("persistent_undo")
  set undofile
  set undodir=~/.vim/undo
endif

"" various
set noexrc
set secure

"" replace all by default
set gdefault
