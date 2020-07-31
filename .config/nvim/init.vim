""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""    ___    _                                 _
""""""   |   \  | |  _____   _____   __        __ (_)  ___   ___
""""""   | |\ \ | | |  __|  /  _  \  \ \      / / | | |   \_/   |
""""""   | | \ \| | | |_   /  / \  \  \ \    / /  | | | |\   /| |
""""""   | |  \   | |  _| |  |   |  |  \ \  / /   | | | | \_/ | |
""""""   | |   \  | | |__  \  \_/  /    \ \/ /    | | | |     | |
""""""   |_|    \_| |____|  \_____/      \__/     |_| |_|     |_|
""""""
""""""
""""""                                          Jaimedgp    May 1, 2020
""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""
""  VIM-PLUG CONFIGURATION
"""""""""""""""""""""""""""""""

" Check if vim-plug is installed and install if it is not
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent execute "!curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
    autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" set the runtime path to include Vim-Plug and initialize
call plug#begin('~/.config/nvim/plugged')

"" APPERANCE PLUGINS
Plug 'vim-airline/vim-airline'                                                      "" Status Bar
Plug 'vim-airline/vim-airline-themes'                                               "" Status Bar Themes

Plug 'flazz/vim-colorschemes'                                                       "" Every colorscheme I'll need ever

"" OTHER PLUGINS
Plug 'preservim/nerdtree', { 'on': 'NERDTreeTabsToggle' }                           "" Show folders as tree
Plug 'jistr/vim-nerdtree-tabs', { 'on': 'NERDTreeTabsToggle'}                       "" Show folders as tree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight', { 'on': 'NERDTreeTabsToggle'}       "" NerdTree highlight
Plug 'ryanoasis/vim-devicons', { 'on': 'NERDTreeTabsToggle'}                        "" Show NerdTree icons
Plug 'Xuyuanp/nerdtree-git-plugin'                                                  "" Git in NerdTree

Plug 'irrationalistic/vim-tasks', {'for': 'todo'}                                   "" Tasks plugin
Plug 'airblade/vim-gitgutter'                                                       "" Show +/-/~ git diff lines
Plug 'dhruvasagar/vim-table-mode'                                                   "" Make table apperance
Plug 'terryma/vim-multiple-cursors'                                                 "" Multiple cursor
Plug 'tpope/vim-surround'                                                           "" Envolve exclamation (), {}, [], ...

Plug 'vimwiki/vimwiki', {'for': ['wiki','markdown']}                                "" Wiki Editor to link projects
Plug 'junegunn/goyo.vim', {'for': ['wiki','markdown','tex','ipynb']}               "" Center all code

Plug 'jalvesaq/Nvim-R', {'for': 'R'}                                                "" R compile
Plug 'lervag/vimtex', {'for': 'tex'}                                                "" LaTex compile

"" PYTHON PLUGINS
Plug 'tmhedberg/SimpylFold', {'for': 'python'}                                      "" Fold by python syntax
Plug 'ycm-core/YouCompleteMe', {'for': ['python', 'cpp']}                           "" Python Auto-Complete
Plug 'vim-syntastic/syntastic', {'for': 'python'}                                   "" Check your syntax on each save
Plug 'nvie/vim-flake8', {'for': 'python'}                                           "" PEP 8 checking
Plug 'vim-python/python-syntax', {'for': 'python'}                                  "" Syntax highlighting

Plug 'szymonmaszke/vimpyter'                                                        "" Display notebook using custom syntax


call plug#end()
filetype plugin indent on   "" required



"""""""""""""""""""""""""""""""
""  GLOBAL NVIM OPTIONS
"""""""""""""""""""""""""""""""

set termguicolors           "" Activa true colors en la terminal
syntax on

set noshowmode              "" Don't show mode
set ttimeoutlen=100         "" faster timeout for escape key and others
set fileformat=unix


"" IDENTATION OPTIONS
set autoindent              "" New lines inherit the indentation of previous lines
set smartindent             "" Even better autoindent
set expandtab               "" Convert tabs to spaces
set shiftround              "" Round the indentation to the nearest multiple of shiftwidth
set smarttab                "" Insert “tabstop” number of spaces when the “tab” key is pressed.
set shiftwidth=4            "" When shifting, indent using four spaces.
set tabstop=4               "" Indent using four spaces.


"" TEXT RENDERING OPTIONS
set encoding=utf-8          "" Use an encoding that supports unicode.
set linebreak               "" Avoid wrapping a line in the middle of a word.
set spelllang=en_gb,es      "" Set spell-checker language to EN-UK, ES-ES


"" CODE FOLDING OPTIONS
set foldmethod=indent       "" Fold based on indention levels.
"set foldnestmax=3          "" Only fold up to three nested levels.
set foldlevel=1             "" Just fold up to 2 level
"set nofoldenable           "" Disable folding by default.


"" RULER NUMERS
set laststatus=2            "" Always display the status bar.
set number                  "" Show line numbers on the sidebar. Set current line absolute number
set ruler                   "" Always show cursor position.
set relativenumber          "" Show line number on the current line and relative numbers on all other lines.
set cursorline              "" Highlight the line currently under cursor.


"" MISCELLANEOUS OPTIONS
set formatoptions+=j        "" Delete comment characters when joining lines.
set history=1000            "" Increase the undo limit.
set wildignore+=.pyc,.swp   "" Ignore files matching these patterns when opening files based on a glob pattern.
set clipboard=unnamed       "" Use system clipboard
set splitbelow              "" Horizontal split below



"""""""""""""""""""""""""""""""
""  REMAP NVIM COMMANDS
"""""""""""""""""""""""""""""""

"" FOLDING
nnoremap <space> za         "" Enable folding with the spacebar


"" SPLIT NAVIGATIONS
nnoremap <C-y> 5<C-y>
nnoremap <C-e> 5<C-e>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" ADD BLANK LINE
"map <Enter> o<ESC>         "" Add line below and escape
map <C-CR> o<ESC>       "" Add line upper and escape



"""""""""""""""""""""""""""""""
""  COLORSCHEMES
"""""""""""""""""""""""""""""""

"" COLORSCHEMES
"autocmd BufEnter *  colorscheme spring-night, crayon, quantum, quantum, molokai, monokai
autocmd BufEnter * colorscheme tender
autocmd BufEnter *.cpp colorscheme nova
autocmd BufEnter *.sql colorscheme solarized8_dark_low
autocmd BufEnter *.vim colorscheme blackdust
autocmd BufEnter *.R colorscheme crayon
autocmd BufEnter *.ipynb colorscheme bubblegum-256-light
autocmd BufEnter *.sh colorscheme quantum
autocmd BufRead,BufEnter NERD_tree_* colorscheme nord

autocmd BufEnter *.js colorscheme dracula
autocmd BufEnter *.html colorscheme neodark
autocmd BufEnter *.css colorscheme nordisk

" EXTENSION SYNTAX
autocmd BufEnter *.py source $HOME/.config/nvim/syntax/python.vim
autocmd BufEnter *.todo source $HOME/.config/nvim/syntax/todo.vim

autocmd BufEnter *.wiki,*.md source $HOME/.config/nvim/syntax/readme.vim
autocmd BufEnter *.tex source $HOME/.config/nvim/syntax/latex.vim



"""""""""""""""""""""""""""""""
""  VIM CONFIGURATION
"""""""""""""""""""""""""""""""

autocmd BufWritePre * %s/\s\+$//e



"""""""""""""""""""""""""""""""
""  AIRLINE CONF
"""""""""""""""""""""""""""""""

let g:goyo_width=150
let g:goyo_height=90



"""""""""""""""""""""""""""""""
""  AIRLINE CONF
"""""""""""""""""""""""""""""""

let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#formatter = 'default'
let g:airline_skip_empty_sections = 1
"let g:airline_theme='murmur'

let g:airline_section_a = airline#section#create(["mode"])
let g:airline_section_b = airline#section#create_left(["%f", "%M"])
let g:airline_section_c = " "

let g:airline_section_x = " "
let g:airline_section_y = airline#section#create_right(["filetype"])
let g:airline_section_z = airline#section#create_right(["%L", "%p%%", "%l:%c"])

let g:airline_section_error = ""
let g:airline_section_warning = ""



"""""""""""""""""""""""""""""""
""  TABLE-MODE CONFIG
"""""""""""""""""""""""""""""""

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



"""""""""""""""""""""""""""""""
""  NERDTREE CONFIG
"""""""""""""""""""""""""""""""

"" Change NERDTree open command
map <C-f> :NERDTreeTabsToggle<CR>
"" Ignore files in NERDTree
let NERDTreeIgnore=['\.pyc$', '\~$']
"" How can I close vim if the only window left open is a NERDTree?
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nmap <Leader>r :NERDTreeFocus<cr>R<c-w><c-p>



"""""""""""""""""""""""""""""""
""  VIM-WIKI CONF
"""""""""""""""""""""""""""""""

let g:vimwiki_list = [{'path': '~/.config/nvim/vimwiki/',
                            \ 'syntax': 'markdown', 'ext': '.md'},
                      \{'path': '~/Repos/',
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



"""""""""""""""""""""""""""""""
""  YOUCOMPLETEME CONF
"""""""""""""""""""""""""""""""

let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]



"""""""""""""""""""""""""""""""
""       VIM-TASK
"""""""""""""""""""""""""""""""

let g:TasksDateFormat='%y-%m-%d'
