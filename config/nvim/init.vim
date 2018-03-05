
" In order to print the configuration parameters, use the following
"   echo &variable
"
"   or echom

" https://github.com/neovim/neovim/wiki/FAQ
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

if filereadable(expand("~/.config/vim/vim-plug.init.vim"))
	source ~/.config/vim/vim-plug.init.vim
else
    echo "CONFIG WARNING!!!"
endif

if filereadable(expand("~/.config/vim/core.init.vim"))
	source ~/.config/vim/core.init.vim
else
    echo "CONFIG WARNING!!!"
endif

