syntax on
set ai
set cindent
set ts=4
set sw=4
set expandtab
set hlsearch

set encoding=utf-8

set backspace=2
set nocompatible              " required  
filetype off                  " required

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Enable short-cut for python
map <F2> :w<Enter>:!python %<Enter>

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'

let g:SimplyFold_docstring_preview=1
let python_highlight_all=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

au BufNewFile,BufRead *.py  
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

au BufNewFile,BufRead *.js,*.html,*.css  
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

colorscheme default
