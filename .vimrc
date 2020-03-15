set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
 set rtp+=~/.vim/bundle/Vundle.vim
 call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" " PLUGINS TO INSTALL
"Plugin 'Lokaltog/powerline' , {'rtp': 'powerline/bindings/vim/'}    "" Powerline
Plugin 'irrationalistic/vim-tasks'                                  "" Tasks plugin 
Plugin 'preservim/nerdtree'                                         "" Show folders as tree
Plugin 'vimwiki/vimwiki'                                            "" Wiki Editor to link projects
Plugin 'airblade/vim-gitgutter'                                     "" Show +/-/~ git diff lines
Plugin 'dhruvasagar/vim-table-mode'                                 "" Make table apperance
Plugin 'terryma/vim-multiple-cursors'                               "" Multiple cursor

Plugin 'jalvesaq/Nvim-R'                                            "" R compile
Plugin 'lervag/vimtex'                                              "" LaTex compile

"" PYTHON PLUGINS
Plugin 'tmhedberg/SimpylFold'
Plugin 'Valloric/YouCompleteMe'                                     "" Python Auto-Complete
Plugin 'tpope/vim-surround'                                         "" Manage envolve exclamation such (), {}, [], ...

call vundle#end()            " required
filetype plugin indent on    " required
syntax on

set noshowmode

"" IDENTATION OPTIONS
set autoindent		"" New lines inherit the indentation of previous lines
set smartindent     "" Even better autoindent
set expandtab		"" Convert tabs to spaces
set shiftround		"" Round the indentation to the nearest multiple of shiftwidth
set smarttab		"" Insert “tabstop” number of spaces when the “tab” key is pressed.
set shiftwidth=4	"" When shifting, indent using four spaces.
set tabstop=4		"" Indent using four spaces.


"" TEXT RENDERING OPTIONS
set encoding=utf-8  "" Use an encoding that supports unicode.
set linebreak       "" Avoid wrapping a line in the middle of a word.


"" CODE FOLDING OPTIONS
set foldmethod=indent   "" Fold based on indention levels.
"set foldnestmax=3       "" Only fold up to three nested levels.
set foldlevel=1         "" Just fold up to 2 level
"set nofoldenable        "" Disable folding by default.


"" RULER NUMERS
set laststatus=2    "" Always display the status bar.
set number          "" Show line numbers on the sidebar. Set current line absolute number
set ruler           "" Always show cursor position.
set relativenumber  "" Show line number on the current line and relative numbers on all other lines.
"set cursorline      "" Highlight the line currently under cursor.

"" Change NERDTree open command 

"" MISCELLANEOUS OPTIONS
set formatoptions+=j        "" Delete comment characters when joining lines.
set history=1000            "" Increase the undo limit.
set wildignore+=.pyc,.swp   "" Ignore files matching these patterns when opening files based on a glob pattern.
set clipboard=unnamed       "" Use system clipboard
set splitbelow              "" Horizontal split below


" ColorSchemes
""autocmd BufEnter *  colorscheme spring-night, crayon, quantum, quantum, molokai, monokai
autocmd BufEnter * colorscheme quantum
autocmd BufEnter *.sql colorscheme quantum
autocmd BufEnter *.vim colorscheme crayon
autocmd BufEnter *.vimrc colorscheme crayon
autocmd BufEnter *.cpp colorscheme neodark
autocmd BufEnter *.md colorscheme blackdust_modified

" EXTENSION SYNTAX
autocmd BufEnter *.tex source $HOME/.vim/syntax/latex.vim 
autocmd BufEnter *.py source $HOME/.vim/syntax/python.vim
autocmd BufEnter *.todo source $HOME/.vim/syntax/todo.vim


"" REMAP SOME COMMANDS

"" fOLDING 
" Enable folding with the spacebar
nnoremap <space> za


"" SPLIT NAVIGATIONS
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" NERDTree CONFIGURATION

"" Change NERDTree open command 
map <C-f> :NERDTreeToggle<CR>
"" Ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>


"" YouCompleteMe CONFIGURATION
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]

"" VimWiki CONFIGURATION
let g:vimwiki_list = [{'path': '~/.vim/vimwiki/',
                            \ 'syntax': 'markdown', 'ext': '.md'},
                      \{'path': '~/jaimedgp.github.io/',
                            \ 'syntax': 'markdown', 'ext': '.md'}]
:nmap <Leader>vs <Plug>VimwikiVSplitLink
:nmap <Leader>sp <Plug>VimwikiSplitLink


function! VimwikiLinkHandler(link)
    " Use Vim to open external files with the 'vfile:' scheme.  E.g.:
    "   1) [[vfile:~/Code/PythonProject/abc123.py]]
    "   2) [[vfile:./|Wiki Home]]
    " The file is open in vertical split
    let link = a:link
    if link =~# '^vfile:'
        let link = link[1:]
    else
        return 0
    endif

    let link_infos = vimwiki#base#resolve_link(link)
    if link_infos.filename == ''
        echomsg 'Vimwiki Error: Unable to resolve link!'
        return 0
    else
        exe 'vs ' . fnameescape(link_infos.filename)
        return 1
    endif
endfunction


"" Table-Mode CONFIGURATION
let g:table_mode_corner='+'
let g:table_mode_corner_corner='+'
let g:table_mode_header_fillchar='='

function! s:isAtStartOfLine(mapping)
    let text_before_cursor = getline('.')[0 : col('.')-1]
    let mapping_pattern = '\V' . escape(a:mapping, '\')
    let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')

    return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
            \ <SID>isAtStartOfLine('\|\|') ?
            \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
            \ <SID>isAtStartOfLine('__') ?
            \ '<c-o>:silent! TableModeDisable<cr>' : '__'


" AIRLINE CONFIGURATION
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_skip_empty_sections = 1
"let g:airline_theme='murmur'

let g:airline_section_a = airline#section#create(["mode"])
let g:airline_section_b = airline#section#create_left(["%f", "filetype", ""])

let g:airline_section_c = " "

let g:airline_section_x = " "
let g:airline_section_y = " "
let g:airline_section_z = airline#section#create_right(["%L", "%p%%", "%l:%c"])

let g:airline_section_error = ""
let g:airline_section_warning = ""
