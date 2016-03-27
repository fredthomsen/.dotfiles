#!/bin/bash
#
# Fred Thomsen
# ~/.bash_aliases: Personal aliases

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias free='free -m'

alias df='df -Th'
alias du='du -h'
alias ..='cd ..'
alias h='history'

alias rm='rm -I'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'     # always make directory
alias top='htop'

# terminal aliases
alias xfce4-terminal='xfce4-terminal --maximize'
alias terminal='xfce4-terminal --maximize'
alias term='xfce4-terminal --maximize'

# ls aliases
alias ls='ls -hF --color'  # add colors for filetype recognition
alias lt='ls -ltr'         # sort by date, most recent last
alias la='ls -Al'          # show hidden files
alias ll='ls -l --group-directories-first'
alias l='ls -CF'

alias lx='ls -lXB'         # sort by extension
alias lk='ls -lSr'         # sort by size, biggest last
alias lc='ls -ltcr'        # sort by and show change time, most recent last
alias lu='ls -ltur'        # sort by and show access time, most recent last
alias lm='ls -al |more'    # pipe through 'more'
alias lr='ls -lR'          # recursive ls

# Git aliases
alias g='git'
alias ga='git add'
alias gb='git br'
alias gco='git co'
alias gct='git ct'
alias gm='git mg'
alias gr='git rb'
alias gd='git diff'
alias gl='git log'
alias gvl='git vlog'
alias gvbl='git vblog'
alias gr='git revision'
alias gs='git st'
alias gsh='git sh'
alias gshf='git shf'
alias gt='git tag'
alias gps='git ps'
alias gpl='git pl'
