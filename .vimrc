syntax on

set nocompatible              " be iMproved, required
filetype off                  " required
syntax enable
set background=dark
colorscheme monokai 
set number

set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set guifont=Menlo\ Regular:h14
set mouse=a
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
"
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" ---------- HELPERS --------------------
Plugin 'vim-scripts/SyntaxAttr.vim'
map -a  :call SyntaxAttr()<CR>

" ---------- STYLES ----------------------
Bundle 'Lokaltog/vim-powerline'
Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1

" ---------- FILEMANAGER -----------------
Plugin 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
let g:nerdtree_tabs_open_on_console_startup = 1
let g:NERDTreeChDirMode = 2

" ---------- AUTOCOMPLETE -----------------
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'
Bundle 'marijnh/tern_for_vim'
Bundle 'tpope/vim-surround'

" ---------- JSHINT  -----------------
Bundle 'scrooloose/syntastic'
let g:syntastic_javascript_checkers = ['jshint']

" ---------- TYPESCRIPT --------------
Bundle 'leafgarland/typescript-vim'

" ----------------- EMMET -----------------
Bundle 'mattn/emmet-vim'
imap <C-e><C-e> <C-y>,

" ----------------- Multiple Cursor ----------------
Bundle 'terryma/vim-multiple-cursors'

" ----------------- MarkDown Support ---------------
Bundle 'gabrielelana/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" ----------------- ShortCut ---------------
"  Ctrl + Right | Left | up to handle tabs
nnoremap <C-Right>  :tabnext<CR>
nnoremap <C-Left>   :tabprev<CR>
nnoremap <C-Up>     :tabnew<CR>

" Tab/Shift+Tab Indent/Outdent in visual mode
vnoremap <Tab>      >gv
vnoremap <S-Tab>    <gv

" Keep Selection when indenting
vnoremap > >gv
vnoremap < <gv

" NERDTree
map <C-t> :NERDTreeToggle<CR>

" ----------------- NERDTree binding at startup and close
autocmd VimEnter * NERDTree 
autocmd VimEnter * wincmd p
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
