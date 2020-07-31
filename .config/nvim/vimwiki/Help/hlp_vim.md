# Contents
    - [Easy shortcuts](#Easy shortcuts)
    - [Vim Plugins](#Vim Plugins)
        - [NERDTree](#Vim Plugins#NERDTree)
        - [Nvim-R](#Vim Plugins#Nvim-R)
            - [Inline Code Output](#Vim Plugins#Nvim-R#Inline Code Output)
        - [Vimtex](#Vim Plugins#Vimtex)
        - [SimpyFold](#Vim Plugins#SimpyFold)
        - [Vim Multiple Cursors](#Vim Plugins#Vim Multiple Cursors)
        - [Vim Table Mode](#Vim Plugins#Vim Table Mode)
        - [Vim Tasks](#Vim Plugins#Vim Tasks)
        - [Vim Wikis](#Vim Plugins#Vim Wikis)

# Easy shortcuts

    >* `:XX{sp, vs} file`   
    >* `ctrl+W _`   =>  Maximize horizontal split
    >* `ctrl+W {+, -}`   =>  {+, -} horizontal line height
    >* `ctrl+W |`   =>  Maximize vertical split
    >* `ctrl+W =`   => Equalize splits
    >* `ctrl+W c`   => close split
    >* `ctrl+W R`   =>  Swap splits
    >* `ctrl+t ctrl+{H, K}` => pasar de {vert, horz} a {horz, vert}
    
    >* `:mksession filename.vim` -> to execute -> `vim -S filename.vim`
    
    >* `"<LETTER>y` copy selected text and register in <LETTER>
    >* `"<LETTER>p` paste selected text and register in <LETTER>


# Vim Plugins

## NERDTree

* `<Ctrl-f>` - Open NERDTree
* `<Shift-i>` - Show/hidde hidden folders and files

* `s` - split vertical and open file


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


## Vim Multiple Cursors

Vim Multiple Cursors [README](Hlp_plugs/vim-multiple-cursors) file


## Vim Table Mode

Vim Table Mode [README](Hlp_plugs/vim-table-mode) file


## Vim Tasks

Vim Tasks [README](Hlp_plugs/vim-tasks) file


## Vim Wikis

Vim Wikis [README](Hlp_plugs/vimWiki) file
