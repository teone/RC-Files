syntax on

set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable
set background=dark
colorscheme solarized
set number

set cursorline
set expandtab
set tabstop=4
set guifont=Menlo\ Regular:h14

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Bundle 'Lokaltog/vim-powerline'

" ---------- FILEMANAGER -----------------
Plugin 'scrooloose/nerdtree'

" ---------- AUTOCOMPLETE -----------------
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Bundle 'tpope/vim-surround'

" ---------- JSHINT  -----------------
Bundle 'scrooloose/syntastic'
let g:syntastic_javascript_checkers = ['jshint']

" ----------------- EMMET -----------------
Bundle 'mattn/emmet-vim'
imap <C-e><C-e> <C-y>,

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" ----------------- NERDTree binding at startup and close
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
