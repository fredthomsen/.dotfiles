#!/bin/bash
#
# Fred Thomsen
# ~/.bash_aliases: Personal aliases

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    if [ $(uname) = Darwin ]; then
        alias ls='ls -G'
    else
        alias ls='ls --color=auto'
    fi

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias free='free -m'

alias df='df -h'
alias du='du -h'
alias ..='cd ..'
alias h='history'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias mkdir='mkdir -p'     # always make directory
alias top='htop'

# terminal aliases
if [ $(uname) = Linux ]; then
    alias xfce4-terminal='xfce4-terminal --maximize'
    alias terminal='xfce4-terminal --maximize'
    alias term='xfce4-terminal --maximize'
fi

# ls aliases
if [ $(uname) = Darwin ]; then
    alias ls='ls -hFG'  # add colors for filetype recognition
else
    alias ls='ls -hF --color'  # add colors for filetype recognition
fi
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

# webapps
alias gmail='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=pjkljhegncpnkpknbcohdijeoejaedia'
alias tweet='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=hbdpomandigafcibbmofojjchbcdagbl'
alias reddit='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=pmfcbbijgnhoebddbjpmlikabnbnddgb'
alias cal='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=ejjicmeblgpmajnghnpcppodonldlgfn'
alias github='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=mjoklplbddabcmpepnokjaffbmgbkkgg'
alias drive='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=apdfllckaahabafndbhieahigkjlhalf'
alias music='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=icppfcnhkcmnfdhfhphakoifcfokfdhg'
alias plex='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=fpniocchabmgenibceglhnfeimmdhdfm'
alias netflix='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=deceagebecbceejblnlcjooeohmmeldh'
alias youtube='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=blpcfgokakmgnkcojhhkbfbldkacnbeo'
alias so='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=fbcbmlniebfgkkkplpflplfgijmklngl'
alias maps='/opt/google/chrome/google-chrome --profile-directory=Default --app-id=lneaknkopdijkpnocmklfnjbeapigfbh'
