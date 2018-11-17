" keep 3 lines when scrolling
set scrolloff=3

" Syntax highlighing
syntax on

" Zeilennummern anzeigen
set number

" Suchergebnis hervorheben
set hlsearch
" Incremental search
set incsearch
" Ignore case when searching
set ignorecase

" Show cursor position all the time
set ruler
" Highlight current line
set cul
set cursorline
" Set highlight color to darkgrey
"hi CursorLine term=none cterm=none ctermbg=233

" Don't start to first character when paging
"set nostartofline

set whichwrap+=<

" ctrl-d im Insert Mode zum Löschen der Zeile verwenden
imap <c-d> <esc>ddi

" visual autocomplete for command menu
set wildmenu
