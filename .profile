# Fred Thomsen
# 
# Generic .profile for all shells.

# Colors file
if [ -f ~/.colors ]; then
    . ~/.colors
fi

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.aliases ]; then
    . ~/.aliases
fi

# Separate functions file
if [ -f ~/.functions ]; then
    . ~/.functions
fi

# Private file
if [ -f ~/.private ]; then
    . ~/.private
fi

# Git variables for prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM='git verbose'
GIT_PS1_DESCRIBE_STYLE=describe

# set up git prompt for macos
if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh ]; then
    . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
# or linux
elif [ -f /usr/lib/git-core/git-sh-prompt ]; then
    . /usr/lib/git-core/git-sh-prompt
fi

# I use ctrl-s in vim, so this is needed
stty -ixon

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [[ "$HOSTNAME" == silo2060* ]]; then
    . $HOME/.git_work
else
    . $HOME/.git_home
fi

export TERM=xterm-256color
export EDITOR=vim
export PAGER=most
export GPG_TTY=$(tty)

# Set additional random paths
export JAVA_HOME='/usr/local/java/jdk1.8.0_45'
export GO_HOME='/usr/local/go'
export GOPATH="$HOME/src/gopath"
export PATH="$PATH:/sbin:/usr/sbin:/usr/local/sbin:$HOME/Android/Sdk/tools:$HOME/Android/Sdk/platform-tools:/opt/android-studio/bin:$JAVA_HOME/bin:$GO_HOME/bin:$GOPATH/bin:."
