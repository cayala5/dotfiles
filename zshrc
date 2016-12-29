# zshrc

# allow local customizations before
if [ -f ~/.zshrc_local_before ]; then
    source ~/.zshrc_local_before  
fi

source ~/.zsh/plugins.zsh

# allow local customizations after
if [ -f ~/.zshrc_local_after ]; then
    source ~/.zshrc_local_after  
fi
