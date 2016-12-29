# plugins.zsh

if [ "$TERM" != "screen-256color" ]; then
    export TERM=xterm-256color
fi

# load zgen
source "${HOME}/.dotfiles/zgen/zgen.zsh"

# automatically reset zgen on modifications
ZGEN_RESET_ON_CHANGE=(${HOME}/.zsh/plugins.zsh) 

# specify zgen plugins here
if ! zgen saved; then
    echo "Creating a zgen save"

    # load base oh-my-zsh library
    zgen oh-my-zsh

    # oh-my-zsh plugins
    zgen oh-my-zsh plugins/colored-man-pages
    zgen oh-my-zsh plugins/command-not-found
    zgen oh-my-zsh plugins/history-substring-search
    #zgen oh-my-zsh plugins/git  # a bunch of git aliases

    # other plugins
    zgen load zsh-users/zsh-syntax-highlighting

    # tell zgen you're done
    zgen save
fi

