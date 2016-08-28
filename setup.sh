#! /bin/bash

create_link() {

    origin="$1"
    target="$HOME/$2"

    if [[ "$origin" != "$(readlink $target)" ]]; then
        # Check if link should be created
        if [[ ! -d "$target" ]]; then
            echo "Creating symbolic link from $origin to $target"
            ln -s $origin $target
            if [[ "$?" -ne 0 ]]; then
                echo "Unable to create symbolic link from $origin to $target"
                exit 1
            fi
        fi
    else
        echo "Link is already correct"
    fi
}


# Main

main() {
    dot="$(cd "$(dirname "$0")"; pwd)"

    create_link $dot/.config/git .config/git
  
    curl -fLo "$dot/.config/vim/autoload/plug.vim" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    create_link $dot/.config/vim .config/vim

    curl -fLo "$dot/.config/nvim/autoload/plug.vim" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    create_link $dot/.config/nvim .config/nvim

    create_link $dot/.config/termite .config/termite

    create_link $dot/.config/tmux .config/tmux
}

main "$@"

