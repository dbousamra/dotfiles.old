# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="domlebo70"
DISABLE_AUTO_TITLE=true
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:$HOME/Documents/workspace/Roy/roy # Add RVM to PATH for scripting
PATH=$PATH:$HOME/Documents/workspace/Misc/play-1.2.5/
PATH=$PATH:$HOME/Applications/Firefox.app/Contents/MacOS/


# Aliases
alias pcat="pygmentize -f terminal256 -O style=native -g"
alias workspace="cd ~/Documents/workspace/"
alias thoughtworks="cd ~/Documents/workspace/ThoughtWorks"
alias scala="cd ~/Documents/workspace/Scala"
alias cl="clear"
alias rcl="rake tmp:clear && rake assets:clean"
