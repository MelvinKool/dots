set nocompatible

" VimPlug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'kien/ctrlp.vim'
Plug 'powerline/powerline'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdcommenter'
Plug '/tpope/vim-fugitive'
call plug#end()
" TODO autotags
" TODO add vimtex
" TODO add language spell checker
filetype plugin indent on
syntax enable
set background=dark
colorscheme solarized


set hlsearch
" Ignore case with searches
set ignorecase
set expandtab
set shiftwidth=4
set tabstop=4
set ruler
set number

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Python stuff
autocmd BufWritePre *.py %s/\s\+$//e

autocmd BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |
