# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# ... or force ignoredups and ignorespace
export HISTCONTROL=ignoreboth

export CLASSPATH=~/Lib/*:~/Lib/berkeleyParser/berkeleyParser.jar:/usr/share/java/*:./*

export LD_LIBRARY_PATH=/usr/local/lib/:/home/alexanderrush/libs/gurobi510/linux64/lib/:$LD_LIBRARY_PATH


# append to the history file, don't overwrite it
shopt -s histappend


# synclient "tapbutton2=3"
# synclient "tapbutton3=2"
# synclient "verttwofingerscroll=1"
# synclient "horiztwofingerscroll=1"


export EDITOR="emacsclient -a emacs "

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

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

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
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

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'
export PATH=$PATH:~/.cabal/bin/:~/.xmonad/:/var/lib/gems/1.8/bin/:~/Lib/ampl/bin/:~/Lib/graclus1.2/


# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

shopt -s histappend
export PROMPT_COMMAND="history -a; history -n;"

source /usr/share/doc/cdargs/examples/cdargs-bash.sh

export DATA="/home/srush/Projects/relax_decode/parse/data/"
export PROTOCOL_BUFFERS_PYTHON_IMPLEMENTATION=python
export TERM=xterm-256color

export SCARAB_ROOT="/home/srush/Projects/relax_decode/"

export CXX=g++-4.6
export CC=gcc-4.6
       
export GUROBI_HOME="/home/srush/libs/gurobi510/linux64/"
export PATH="${PATH}:${GUROBI_HOME}/bin"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:${GUROBI_HOME}/lib"
export GRB_LICENSE_FILE=${GUROBI_HOME}/gurobi.lic

shopt -s histappend
#export PROMPT_COMMAND='history -a'
if [ -f ~/.bash.extra ]; then
    . ~/.bash.extra
fi

export GOROOT=$HOME/Projects/goappengine/google_appengine/goroot
export PATH=$PATH:$GOROOT/..

export YAAFE_DIR=/home/alexanderrush/libs/yaafe-v0.64/
export YAAFE_PATH=/usr/local/yaafe_extensions
export PATH=$PATH:$YAAFE_DIR/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$YAAFE_DIR/lib
export PYTHONPATH=$PYTHONPATH:$YAAFE_DIR/src_python