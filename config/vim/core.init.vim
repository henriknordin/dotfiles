
" General {
    set background=dark         " prefer dark background
    filetype plugin indent on	" automatically detect file types
    syntax on                   " syntax highlightning on
    set mouse=a                 " automatically enable mouse usage
    set mousehide               " hide the mouse cursor while typing
    scriptencoding utf-8
    "set virtualedit=onemore     " allow cursor beyond last character on line

    " check where to put these
    set showmode
    set cursorline
    set number
    set showmatch
" }

" Formatting {
    set nowrap
    set autoindent
	set shiftwidth=4		" use indents of 4 spaces
	set expandtab			" tabs are spaces, not tabs
    set tabstop=4
    set softtabstop=4
    set splitright                  " put hsplit right of the current
    set splitbelow                  " put vsplit below the current

    " For markdown, allow line wrapping but do not break words apart
    autocmd BufRead,BufNewFile *.md set filetype=markdown
    autocmd BufRead,BufNewFile *.md set wrap
    autocmd BufRead,BufNewFile *.md set linebreak
" }

" UI {
    " Should be common for both configs
    colorscheme molokai
    let g:molokai_original = 0
    let g:rehash = 1
    "colorscheme " good as well
" }

" Airline {
    set laststatus=2    " statusline available even before split
" }

