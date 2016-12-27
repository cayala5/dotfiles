# zshrc

# allow local customizations before
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before  
fi

# load zgen
source "${HOME}/.dotfiles/zgen/zgen.zsh"

# automatically reset zgen on modifications
# TODO: Make this work
ZGEN_RESET_ON_CHANGE=(${HOME}/.zshrc)

# specify zgen plugins here
if ! zgen saved; then
    echo "Creating a zgen save"

    # load base oh-my-zsh library
    zgen oh-my-zsh

    # oh-my-zsh plugins
    zgen oh-my-zsh plugins/colored-man-pages
    #zgen oh-my-zsh plugins/git  # a bunch of git aliases

    # tell zgen you're done
    zgen save
fi

# allow local customizations after
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after  
fi
