# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

# Plugins - loaded on shell startup
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Aliases
alias dc="docker-compose"

# Add brew to path
export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH

# NVM 
source $(brew --prefix nvm)/nvm.sh


##################
# Everything below is for Supermove, can remove later
##################

# Add pyenv to path
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Add poetry to path
POETRY_PATH=$HOME/Library/Application\ Support/pypoetry/venv/bin
export PATH="$PATH:$POETRY_PATH"

# Supermove CLI
function cli() {
    DIR=$PWD
    cd ~/projects/supermove/tools/cli
    poetry run src/supermove/cli/entry_point.py "$@"
    cd $DIR
}

# Default AWS environment
export AWS_PROFILE="staging"
export NVM_DIR=~/.nvm

# Not sure what this does
# Something for Supermove, breaks `code .`
# export NODE_OPTIONS='--openssl-legacy-provider'

# Android SDK
export JAVA_HOME=/opt/homebrew/opt/openjdk@11
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH="${ANDROID_HOME}/cmdline-tools/10.0/bin:${ANDROID_HOME}/platform-tools:${JAVA_HOME}/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@11/bin:$PATH"
