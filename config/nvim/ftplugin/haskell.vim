
echo "reading ftplugin/haskell.vim"

" haskell-vim
" Align 'then' two spaces after 'if'
let g:haskell_indent_if = 2
" Indent 'where' block two spaces under previous body
let g:haskell_indent_before_where = 2
" Allow a second case indent style (see haskell-vim README)
let g:haskell_indent_case_alternative = 1
" Only next under 'let' if there's an equal sign
let g:haskell_indent_let_no_in = 0
" Do not run hindent on save
let g:hindent_on_save = 0

" www.github.com/w0rp/ale (Asynchronous Lint Engine)
let g:ale_linters.haskell = ['stack-ghc-mod', 'hlint']

" airline
let g:airline#extensions#ale#enabled = 1

" other
set shiftwidth=2
set softtabstop=2

let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc
