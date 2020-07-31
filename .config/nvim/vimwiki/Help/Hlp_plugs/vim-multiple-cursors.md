# Vim-Multiple-Cursors

## Quick Start

### normal mode / visual mode

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

### visual mode when multiple lines are selected

* start: `<C-n>` add _virtual cursors_ on each line
* You can now change the _virtual cursors_ with **normal mode** commands.
* For instance: `ciw`.

### command

The command `MultipleCursorsFind` accepts a range and a pattern (regexp), it creates a _visual cursor_ at the end of each match.
If no range is passed in, then it defaults to the entire buffer.


## Mapping

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


