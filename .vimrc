set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required

Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/powerline' , {'rtp': 'powerline/bindings/vim/'}
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vimwiki/vimwiki'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-speeddating.git'
Plugin 'vim-scripts/SQLComplete.vim'
Plugin 'lervag/vimtex'

call vundle#end()            " required
filetype plugin indent on    " required

let python_highlight_all=1
syntax on

" ColorSchemes
""autocmd BufEnter *  colorscheme spring-night, crayon, quantum, quantum, molokai, monokai
autocmd BufEnter * colorscheme quantum
autocmd BufEnter *.tex source $HOMe/.vim/syntax/tex.vim 
autocmd BufEnter *.py source $HOME/.vim/syntax/python.vim
autocmd BufEnter *.sql colorscheme quantum
autocmd BufEnter *.vim colorscheme crayon
autocmd BufEnter *.vimrc colorscheme crayon
autocmd BufEnter *.cpp source $HOME/.vim/syntax/cpp.vim 
autocmd BufEnter *.md colorscheme github
"autocmd BufEnter *.c colorscheme Tomorrow-Night
"autocmd Filetype gitcommit,mail setlocal spell textwidth=76 colorcolumn=77

" " Set incremental search by default
set incsearch

" " Display line number on the right by default
set relativenumber

" " Unfold all text when opening
set nofoldenable

" " Set >> & << to indent 4 columns
set shiftwidth=2

" " Set tab to indent 4 columns
set tabstop=2

" " round indent to multiple of 'shiftwidth'
set shiftround

" " align the new line indent with the previous line
set autoindent

" " set current line absolute number
set number

set laststatus=2
"Enable folding
set foldmethod=indent
set foldlevel=99
