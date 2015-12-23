# iterm_utilities
Simple Utilities for iterm

The idea is to be able to recreate a given layout using a single simple command

In here I'm using it wht zsh and oh-my-zsh. Not that it matters.

on a plugin I have

.oh-my-zsh/plugins/xyz/xyz.plugin.zsh
:
: 
source <home_of_checkout>/iterm_utilities.git/iterm_utilities.bash
source <home_of_checkout>/iterm_utilities.git/mysetup.sh

then on the terminal simple typing 'itermsetup' provides a number of tabs with splits and a few commands executed on them, such as title, change directory and an alias dependent on the path
