#! /bin/bash
#
# Setup of configuration provided in the repo.

PROGNAME=$(basename $0)

create_link() {

    origin="$1"
    target="$HOME/$2"

    if [[ "$origin" != "$(readlink $target)" ]]; then
        # Check if link should be created
        if [[ ! -d "$target" ]]; then
            if ! ln -s $origin $target ; then
                error_exit "$LINENO: Failed creating symbolic from $origin to $target"
            fi
            echo "Creating symbolic link from $origin to $target"
        else 
            error_exit "$LINENO: $target already exists and points at $(readlink $target)"
        fi
#    else
#        echo "Link $target is already correct"
    fi
}


###################################################################
# Print an error message to stderr and terminate with exit code 1
# Globals:
#   PROGNAME
# Arguments:
#   $1 Optional error message 
# Returns:
#   None
###################################################################
error_exit() {
    echo "${PROGNAME}: ${1:-"Unknown error"}" 1>&2
    exit 1
}


check_shell() {
    if ! is_shell_default "$1"; then
        if is_shell_available "$1"; then
            echo "Please set shell using 'chsh -s $1'"
        else
            echo "$1 is not available"
        fi
    fi
}

is_shell_available() {
    test "$(chsh --list-shells | grep -Fx "$1")"
}

is_shell_default() {
    test "$1" = "$SHELL" 
}


# Main
main() {
    dot="$(cd "$(dirname "$0")"; pwd)"

    create_link $dot/config/git .config/git
  
    curl -fLo "$dot/config/vim/autoload/plug.vim" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    create_link $dot/config/vim .config/vim

    curl -fLo "$dot/config/nvim/autoload/plug.vim" --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    create_link $dot/config/nvim .config/nvim

    create_link $dot/config/redshift.conf .config/redshift.conf

    create_link $dot/config/termite .config/termite

    create_link $dot/config/tmux .config/tmux

    check_shell "/bin/zsh"
    create_link $dot/config/zsh/zshenv .zshenv
    create_link $dot/config/zsh .config/zsh

    create_link $dot/config/Xmodmap .Xmodmap
}

main "$@"

