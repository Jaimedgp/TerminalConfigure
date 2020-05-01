# Contents
    - [Easy shortcuts](#Easy shortcuts)
    - [Tmux_Cheatsheet](#Tmux_Cheatsheet)
            - [Sessions](#Tmux_Cheatsheet#Sessions)
            - [Windows](#Tmux_Cheatsheet#Windows)
            - [Panes](#Tmux_Cheatsheet#Panes)
            - [Window/pane](#Tmux_Cheatsheet#Window/pane)
            - [Misc](#Tmux_Cheatsheet#Misc)
    - [Vim Plugins](#Vim Plugins)
        - [Vim-Tasks](#Vim Plugins#Vim-Tasks)
            - [Settings Defaults](#Vim Plugins#Vim-Tasks#Settings Defaults)
            - [Preset Bindings](#Vim Plugins#Vim-Tasks#Preset Bindings)
        - [NERDTree](#Vim Plugins#NERDTree)
        - [VimWiki](#Vim Plugins#VimWiki)
            - [Key bindings](#Vim Plugins#VimWiki#Key bindings)
            - [Commands](#Vim Plugins#VimWiki#Commands)
        - [Vim-Table-Mode](#Vim Plugins#Vim-Table-Mode)
        - [Vim-Multiple-Cursors](#Vim Plugins#Vim-Multiple-Cursors)
            - [Quick Start](#Vim Plugins#Vim-Multiple-Cursors#Quick Start)
                - [normal mode / visual mode](#Vim Plugins#Vim-Multiple-Cursors#Quick Start#normal mode / visual mode)
                - [visual mode when multiple lines are selected](#Vim Plugins#Vim-Multiple-Cursors#Quick Start#visual mode when multiple lines are selected)
                - [command](#Vim Plugins#Vim-Multiple-Cursors#Quick Start#command)
            - [Mapping](#Vim Plugins#Vim-Multiple-Cursors#Mapping)
        - [Nvim-R](#Vim Plugins#Nvim-R)
            - [Inline Code Output](#Vim Plugins#Nvim-R#Inline Code Output)
        - [Vimtex](#Vim Plugins#Vimtex)
        - [SimpyFold](#Vim Plugins#SimpyFold)


# Easy shortcuts

    >* `:XX{sp, vs} file`   
    >* `ctrl+W _`   =>  Maximize horizontal split
    >* `ctrl+W {+, -}`   =>  {+, -} horizontal line height
    >* `ctrl+W |`   =>  Maximize vertical split
    >* `ctrl+W =`   => Equalize splits
    >* `ctrl+W c`   => close split
    >* `ctrl+W R`   =>  Swap splits
    >* `ctrl+t ctrl+{H, K}` => pasar de {vert, horz} a {horz, vert}


# Tmux_Cheatsheet

start new:

    tmux

start new with session name:

    tmux new -s myname

attach:

    tmux a  #  (or at, or attach)

attach to named:

    tmux a -t myname

list sessions:

    tmux ls

kill session:

    tmux kill-session -t myname

In tmux, hit the prefix `ctrl+b` and then:

### Sessions

    :new<CR>  new session
    s  list sessions
    $  name session

### Windows

    c           new window
    ,           name window
    w           list windows
    f           find window
    &           kill window
    .           move window - prompted for a new number
    :movew<CR>  move window to the next unused number

### Panes

    %  horizontal split
    "  vertical split
    
    o  swap panes
    q  show pane numbers
    x  kill pane
    ⍽  space - toggle between layouts

### Window/pane

    :joinp -s :2<CR>  move window 2 into a new pane in the current window
    :joinp -t :1<CR>  move the current pane into a new pane in window 1

* [Move window to pane](http://unix.stackexchange.com/questions/14300/tmux-move-window-to-pane)
* [How to reorder windows](http://superuser.com/questions/343572/tmux-how-do-i-reorder-my-windows)

### Misc

    d  detach
    t  big clock
    ?  list shortcuts
    :  prompt

# Vim Plugins

## Vim-Tasks

### Settings Defaults

`let g:TasksMarkerBase = '☐'`

`let g:TasksMarkerDone = '✔'`

`let g:TasksMarkerCancelled = '✘'`

`let g:TasksDateFormat = '%Y-%m-%d %H:%M'`

`let g:TasksAttributeMarker = '@'`

`let g:TasksArchiveSeparator = '＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿＿'`

Run `:help Tasks` to view the full documentation.

### Preset Bindings

* `<leader> n` - new task below
* `<leader> N` - new task above
* `<leader> d` - toggle current task complete
* `<leader> x` - toggle current task cancelled
* `<leader> a` - send completed tasks to the archive


## NERDTree

* `<Ctrl-f>` - Open NERDTree
* `<Shift-i>` - Show/hidde hidden folders and files

* `s` - split vertical and open file


## VimWiki

### Key bindings

Normal mode:

 * `<Leader>ww` -- Open default wiki index file.
 * `<Leader>wt` -- Open default wiki index file in a new tab.
 * `<Leader>ws` -- Select and open wiki index file.
 * `<Leader>wd` -- Delete wiki file you are in.
 * `<Leader>wr` -- Rename wiki file you are in.
 * `<Enter>` -- Follow/Create wiki link
 * `<Leader>sp` -- Split and follow/create wiki link
 * `<Leader>vs` -- Vertical split and follow/create wiki link
 * `<Backspace>` -- Go back to parent(previous) wiki link
 * `<Tab>` -- Find next wiki link
 * `<Shift-Tab>` -- Find previous wiki link

* For more keys, see `:h vimwiki-mappings`

### Commands

 * `:Vimwiki2HTML` -- Convert current wiki link to HTML
 * `:VimwikiAll2HTML` -- Convert all your wiki links to HTML
 * `:help vimwiki-commands` -- list all commands
 * `:help vimwiki` -- General vimwiki help docs
 * `:VimwikiTOC` -- Create TableOfContents


## Vim-Table-Mode


## Vim-Multiple-Cursors

### Quick Start

#### normal mode / visual mode

* start:          `<C-n>` start multicursor and add a _virtual cursor + selection_ on the match
* next:           `<C-n>` add a new _virtual cursor + selection_ on the next match
* skip:           `<C-x>` skip the next match
* prev:           `<C-p>` remove current _virtual cursor + selection_ and go back on previous match
* select all:     `<A-n>` start multicursor and directly select all matches
* You can now change the _virtual cursors + selection_ with **visual mode** commands.
* For instance: `c`, `s`, `I`, `A` work without any issues.
* You could also go to **normal mode** by pressing `v` and use normal commands there.
 
At any time, you can press `<Esc>` to exit back to regular Vim.

**NOTE**: start with `g<C-n>` to match without boundaries (behaves like `g*` instead of `*`)

#### visual mode when multiple lines are selected

* start: `<C-n>` add _virtual cursors_ on each line
* You can now change the _virtual cursors_ with **normal mode** commands.
* For instance: `ciw`.

#### command

The command `MultipleCursorsFind` accepts a range and a pattern (regexp), it creates a _visual cursor_ at the end of each match.
If no range is passed in, then it defaults to the entire buffer.


### Mapping

If you don't like the plugin taking over your key bindings, you can turn it off and reassign them the way you want:

```viml
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
```

**NOTE:** Please make sure to always map something to `g:multi_cursor_quit_key`, otherwise you'll have a tough time quitting from multicursor mode.


## Nvim-R

Now if you open an R file and hit \rf you’ll see a terminal buffer appear with an R console tied to your current session. To end it, hit \rq.

    Send :: Entire File  \aa
    Send :: Entire Block \bb
    Send :: Entire Function \ff
    Send :: Entire Selection \ss
    Send :: Entire line \l

The object browser is lunch by \ro, and ls() can be run by \rl. View a data frame by using the \rv command

### Inline Code Output

If you have a line of code and hit \o you’ll see the output rendered as comments in your current file.


## Vimtex

    \ll             Start compiling the document
    \lv             Open pdf viewer and/or do forward searching
    \ll (or \lk)    Stop the running compilation 
    \le             Parse the log file for errors and warnings
    \lc             Clean auxiliary files


## SimpyFold 
    
    zf#j         creates a fold from the cursor down # lines.
    zf/string    creates a fold from the cursor to string.
    zj           moves the cursor to the next fold.
    zk           moves the cursor to the previous fold.
    zo           opens a fold at the cursor.
    zO           opens all folds at the cursor.
    zm           increases the foldlevel by one.
    zM           closes all open folds.
    zr           decreases the foldlevel by one.
    zR           decreases the foldlevel to zero -- all folds will be open.
    zd           deletes the fold at the cursor.
    zE           deletes all folds.
    [z           move to start of open fold.
    ]z           move to end of open fold.
