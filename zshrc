# :::Hans Heums zshrc:::
# kilde: http://fendrich.se/blog/2012/09/28/no/

# Path to my oh-my-zsh configuration
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"

# I don't like case sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks. Oh-my-zsh updates itself.
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Sjekk ut de følgende: plugins=(git mercurial autojump command-not-found python pip github gnu-utils history-substring-search)
plugins=vi-mode

source $ZSH/oh-my-zsh.sh

#I don't like this feature. I think no one does. It corrects you, when you are trying to create new files, for example.
unsetopt correctall 

# Sets the default user, which then makes the zsh-profile I'm using (agnoster) hide the name whenever I'm logged in.
export DEFAULT_USER="Hans"
