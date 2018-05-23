#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1="\[\e[1;95m\]\u\[\e[m\] \W % "
# >>> Added by cnchi installer
EDITOR=/usr/bin/nano
