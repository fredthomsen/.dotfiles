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

# set up git prompt for linux
if [ -f /usr/lib/git-core/git-sh-prompt ]; then
    . /usr/lib/git-core/git-sh-prompt
elif [ -f /usr/share/git/completion/git-prompt.sh ]; then
    . /usr/share/git/completion/git-prompt.sh
# or macos
elif [ -f $(brew --prefix)/etc/bash_completion.d/git-prompt.sh ]; then
    . $(brew --prefix)/etc/bash_completion.d/git-prompt.sh
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [[ "$HOSTNAME" == silo2060* ]]; then
    . $HOME/.git_work
else
    . $HOME/.git_home
fi

#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon

export TERM=xterm-256color
export EDITOR=vim
export PAGER=most
export GPG_TTY=$(tty)

# Set additional random paths
unset GOROOT
export JAVA_HOME='/usr/local/java/jdk1.8.0_45'
export PATH="$PATH:/sbin:/usr/sbin:/usr/local/sbin:$HOME/Android/Sdk/tools:$HOME/Android/Sdk/platform-tools:/opt/android-studio/bin:$JAVA_HOME/bin:."
