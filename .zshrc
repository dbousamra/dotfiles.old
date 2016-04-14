# Load private vars
source .vars

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
PATH=$PATH:/Applications/Sublime\ Text.app/Contents/SharedSupport/bin
PATH=$PATH:/usr/local/Cellar/rabbitmq/3.3.4
PATH=$PATH:/usr/local/sbin
PATH=$PATH:/usr/local/Cellar/git/1.9.1/bin/
PATH=$PATH:$HOME/.cabal/bin
PATH=$PATH:/Applications/MAMP/Library/bin
PATH=$PATH:~/.composer/vendor/bin


# Aliases
alias gm="/usr/local/Cellar/graphicsmagick/1.3.20/bin/gm"
alias pcat="pygmentize -f terminal256 -O style=native -g"
alias workspace="cd ~/Documents/workspace/"
alias thoughtworks="cd ~/Documents/workspace/ThoughtWorks"
alias tw=thoughtworks
alias cammy="cd ~/Code/SELU/Cammy"
alias nvr="cd ~/Code/SELU/Cammy/NVR"
alias cl="clear"
alias rcl="rake tmp:clear && rake assets:clean"
alias cloudls="rake cloud:list ENVIRONMENT=showcase"
alias z="zeus"
alias zrspec="zeus rspec -fd"
alias rspec="rspec -fd"
alias r="rspec -fd"
#alias pry="pry -r ./config/environment"
alias gd="cd ~/Documents/workspace/GetUp/Tijuana"
alias sshci='ssh jenkins@192.168.1.151'
alias gut="git"
alias cuke=" ruby -S bundle exec cucumber --tags ~@securepay --tags ~@paypal --tags ~@randomlyfailingwip --tags ~@wip --tags ~@responsive"
alias standup="~/Documents/workspace/Misc/dotfiles/standup.sh"
alias profileme="history | awk '{print \$2}' | awk 'BEGIN{FS=\"|\"}{print \$1}' | sort | uniq -c | sort -nr | head -n 20"
alias path='echo -e ${PATH//:/\\n}'
alias love="/Applications/love.app/Contents/MacOS/love"
alias l='lein'
alias mocha="NODE_ENV=test mocha"
alias t="thrift"
alias vim="nvim"
alias h="homestead"
alias simple="python ~/Code/Misc/simple-http/simple.py"

alias deployment="cd ~/Code/SELU/Cammy/cammy-deployment"
alias media="cd ~/Code/SELU/Cammy/NVR/cammy-media-api"
alias api="cd ~/Code/SELU/Cammy/NVR/cammy-nvr-api"
alias dapi="cd ~/Code/SELU/Cammy/NVR/cammy-nvr-device-manager-api"
alias dweb="cd ~/Code/SELU/Cammy/NVR/cammy-nvr-device-manager-webapp"

# lol cd function
pd() {
  local projDir=$(pro search $1)
  cd ${projDir}
}

export RUBY_HEAP_MIN_SLOTS=800000
export RUBY_HEAP_FREE_MIN=100000
export RUBY_HEAP_SLOTS_INCREMENT=300000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=79000000
# AWS Tools
export EC2_HOME="/usr/local/Cellar/ec2-api-tools/1.7.1.0/libexec"
export DOCKER_TLS_VERIFY=1
export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/domlebo70/.boot2docker/certs/boot2docker-vm
export SBT_OPTS=-XX:MaxMetaspaceSize=512m
export LD_LIBRARY_PATH="/usr/local/Cellar/jpeg-turbo/1.4.0"
export NVM_DIR="/usr/local/opt/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
