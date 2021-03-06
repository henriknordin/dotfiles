
call plug#begin()

" UI
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'
" ctrlp {
    " Keep until dotfiles directory structure has been cleaned up
    let g:ctrlp_show_hidden = 1
" }
Plug 'https://github.com/vim-airline/vim-airline.git'
" vim-airline {
    let g:airline_powerline_fonts = 1
" }
Plug 'https://github.com/vim-airline/vim-airline-themes.git'

" Theme
Plug 'https://github.com/tomasr/molokai.git'

"Plug 'https://github.com/benekastah/neomake.git'
"autocmd! BufWritePost *.hs Neomake

Plug 'https://github.com/w0rp/ale.git'


Plug 'https://github.com/Shougo/deoplete.nvim.git', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1

Plug 'https://github.com/eagletmt/neco-ghc.git'

" Haskell {
    " syntax highlightning
    Plug 'https://github.com/vim-scripts/haskell.vim'
    " vim integration with hindent
    Plug 'https://github.com/alx741/vim-hindent.git'
    Plug 'parsonsmatt/intero-neovim'
    Plug 'jpalardy/vim-slime'
    " C-c C-c -- selected text will be send to tmux session
    " C-c v   -- reconfigure which tmux session is bound
    if filereadable(expand("~/.vim/bundle/vim-slime/plugin/slime.vim"))    
        let g:slime_target = "tmux"
        let g:slime_paste_file = tempname()
        let g:slime_default_config = {"socket_name": "default", "target_pane": "0"}
    endif
" }

Plug 'https://github.com/godlygeek/tabular.git'
vmap a= :Tabularize /=<CR>
vmap a; :Tabularize /;<CR>
vmap a- :Tabularize /-><CR>


call plug#end()

