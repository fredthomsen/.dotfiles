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

# middle of the word complete move to end
setopt complete_in_word
setopt always_to_end

# History options
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt SHARE_HISTORY # share history between sessions
setopt EXTENDED_HISTORY # add timestamps to history
setopt APPEND_HISTORY # adds history
setopt INC_APPEND_HISTORY SHARE_HISTORY  # adds history incrementally and share it across sessions
setopt HIST_IGNORE_ALL_DUPS  # dont record dupes in history
setopt HIST_REDUCE_BLANKS

# reverse search
bindkey -v
bindkey '^R' history-incremental-search-backward

# Print elapsed command time when more than X seconds
REPORTTIME=10

# Hostname not available in zsh
HOSTNAME=$HOST

# set up git prompt for macos or termux
if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh ]; then
    . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
fi
if [ -f /data/data/com.termux/files/usr/etc/bash_completion.d/git-prompt.sh ]; then
    . /data/data/com.termux/files/usr/etc/bash_completion.d/git-prompt.sh
fi

# set terminal window titles
case $TERM in
    xterm*)
        precmd () {print -Pn "\e]0;%n@%m: %~\a"}
        ;;
esac

setopt prompt_subst
# Sane prompt username, hostname, current dir...
if [ "$HOST" = 'odin' ]; then
    HOST_COLOR='red'
else
    HOST_COLOR='cyan'
fi

PROMPT='%{$fg_bold[cyan]%}%n%{$fg_bold[blue]%}@%{$fg[$HOST_COLOR]%}%m%{$fg_bold[blue]%}:%~%{$fg_bold[yellow]%}$(__git_ps1)%{$fg_bold[green]%}$ %{$reset_color%}'
RPROMPT='[$? - %t]'
