# Fred Thomsen
#
# ~/.zshrc

if [ -f "$HOME/.profile" ]; then
    . "$HOME/.profile"
fi

if [ -f "$HOME/.zlogin" ]; then
    . "$HOME/.zlogin"
fi

# Better tab completion
autoload -Uz compinit && compinit

# Sane colors
autoload -U colors && colors

# pre-formatted colored prompt options
autoload -U promptinit && promptinit

# Case-insensative tab completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Better completion for kill all
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'

autoload select-word-style
select-word-style shell

# superglob
setopt extendedglob
unsetopt caseglob

# remember commands in your history without executing them.
setopt interactivecomments

# Only type ..
setopt auto_cd

# History options
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt SHARE_HISTORY # share history between sessions
setopt EXTENDED_HISTORY # add timestamps to history
setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # don't record dupes in history
setopt HIST_REDUCE_BLANKS

# Print elapsed command time when more than X seconds
REPORTTIME=10

# set up git prompt for macos
if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh ]; then
    . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
fi

# Git variables for prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM='git verbose'
GIT_PS1_DESCRIBE_STYLE=describe

# Sane prompt username, hostname, current dir...
PROMPT="%{$fg_bold[cyan]%}%n%{$fg_bold[blue]%}@%{$fg[cyan]%}%m%{$fg_bold[blue]%}:%~$(__git_ps1)%{$fg_bold[green]%}$ $reset_color"
RPROMPT="[%t]"
