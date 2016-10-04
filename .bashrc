# Fred Thomsen
#
# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=10000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# Colors file
if [ -f ~/.bash_colors ]; then
    . ~/.bash_colors
fi

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\w"
PathFull="\W"
NewLine="\n"
Jobs="\j"

# set up git prompt for macos
if [ -f /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh ]; then
    . /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# Git variables for prompt
GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWSTASHSTATE=true
GIT_PS1_SHOWUPSTREAM='git verbose'
GIT_PS1_DESCRIBE_STYLE=describe

# Change host colors depending on what host is being used
if [ "$HOSTNAME" = odin ]; then
    HOST_COLOR=$P_BRed
elif [ "$HOSTNAME" = starlord ] || [ "$HOSTNAME" = fthomsendev ]; then
    HOST_COLOR=$P_BPurple
else
    HOST_COLOR=$P_BCyan
fi

if [ "$color_prompt" = yes ]; then
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[01;34m\]:\w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\]\$\[\033[00m\] '
    PS1="${debian_chroot:+($debian_chroot)}$P_BCyan\u@$HOST_COLOR\h$P_BBlue:\w$P_BYellow\$(__git_ps1)$P_BGreen\$$P_Color_Off "
else
    PS1="${debian_chroot:+($debian_chroot)}\u@\h:\w\$(__git_ps1)\$ "
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# Separate functions file
if [ -f ~/.bash_functions ]; then
    . ~/.bash_functions
fi

# Private file
if [ -f ~/.bash_private ]; then
    . ~/.bash_private
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# I use ctrl-s in vim, so this is needed
stty -ixon

export TERM=xterm-256color
KERNEL=$(uname -a)

OLD_IFS="$IFS"
IFS=

# I like Fallout...
greet='
                                       ▄▓█▀▀▀▀▀█▄                           
               ▄▄▓█`       ,▄▄▓▓▄▄▄▄▄@██▀!√√√√√└▀█▄                         
            .▓█▀██       #█▀▀└:.!╙▀▀██▀:√√√√√√√√√!▀▀█▓▓▄▄                   
           ╓█▀..▀█▓▄▄▄▄▓▀▀:√√√√√√√√√√√√√√√√√√√√√√√√√░░▀▀██▄                 
           ██.√√√!▀▀▀▀▀:√√√√√√√√√√√√√√√√√√√√√√√√√√√√╠░░░░▀█▄                
           █▌√√√√√√√√√√√√√▄▄▄▄▄.√√√√√√√╓▄▄▄.√√√√√√√√╠░░░░░╙█▄               
           ██.√√√√√√√√√▄#█▀╙`╙▀█▓▄▄▄@▓██████▄.√√√√√╠░░░░░░░╙█▓▄             
         ┌████:√√√√√(▄█▀╙       └▀▀▀▀└   └▀▀██,√√╓╢░░░░░░░░░░▀██▄           
         ██:√╙▀▓▄▄▓▓▀▀                      └██▄░░░░░░░░░░░░░░░██▄          
         █▌√√╓██▀  ▄▄@╕                       ▀▀█▓▀▀▀▀▀▀███▄░░░░██▄         
         ██▄▓█▀  ╙▀▀▀▀▀                 ,▄               ▀███░░░░██▄        
          ███`                         ▓███,     .        ███░░░░║██        
         ▓█▀     ,▄                     └▀██▄            ▄██▀░░░░░██`       
        ██▀     ███¼        ,              ▀▀        ╓@██▀▀░░░░░░░██        
       ██▀     ▐███       ╓█▀        ▄▄,          .  ▄╙▀█░░░░░░░░╟██        
      ▐█▌       ▀▀└     .▓█└        #███          .  ╙█▓,▀█░░░░░░██▌        
      ██              ▄▓█▀          ███▌          . .▄,▀█▄╙█░░░░███         
     ╟█▌            #██▀            ╙▀▀           .  ▀█▓,█▄╙█░░███          
     ██─            ███                             ▓▄,▀█▄█,█░███`          
     ██             ╙███                         .   ▀█▄╙█Ö█████            
     ██    ,#         ╙╙                         . ╙█▄ ▀ ╙████▀             
     ██  ╒███▄▄                  ▐█▄            .   ╙▀  .@███┘              
     ██▌  ██▄ └╙▀▀#╦▄▄▄▄▄▄▄▄▄▄▄▄#████▄         .         ╙███               
     ▐██   ▀ ▀▓▄,     `└╙└└ .      ███▌        .          ╟██               
      ██▌      ╙▀█▓▄▄▄,   .,▄▄▄▓▓▀▀╙██        .          .███               
      └██▄        └▀▀▀███▀▀▀▀╙     ▀       ..          ▄███                
       ╙██▄       Ñ▓▓▓▓µ                   ..    ▄▓▓▓▓███▀`                 
        └██▄        `└└                  ..    ▄███▀└└                      
          ▀██▄                          .   ▄▓██▀└                          
            ▀█▓▄                     ..  ▄▓██▀╙                             
              ╙▀█▄,                .╓▄▓██████                               
                 ╙██▓▄         ...      ▄██▀                                
                  ╙█████▓▓▄▄▄▄      .▄▄██▀                                 
                    ▀█████▄▄▄▄▄▄▄▄▓████▀                                    
                       ╙▀▀▀██████▀▀▀╙'

sys_info="$KERNEL"
echo -e "$greet\n$sys_info\n$USER is entering $HOSTNAME."
IFS="$OLD_IFS"

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ "$HOSTNAME" = starlord ] || [ "$HOSTNAME" = fthomsendev ]; then
    export EMAIL="$WORK_EMAIL"
    export NAME='fthomsen'
else
    export EMAIL="$HOME_EMAIL"
    export NAME='Fred Thomsen'
fi

# Set git name and email appropriately
git config --global user.email "$EMAIL"
git config --global user.name "$NAME"

export EDITOR=vim
export PAGER=most

# Set additional random paths
export JAVA_HOME='/usr/local/java/jdk1.8.0_45'
export GO_HOME='/usr/local/go'
export GOPATH="$HOME/src/gopath"
export PATH="$PATH:/sbin:/usr/sbin:/usr/local/sbin:$HOME/Android/Sdk/tools:$HOME/Android/Sdk/platform-tools:/opt/android-studio/bin:$JAVA_HOME/bin:$GO_HOME/bin:$GOPATH/bin:."
