#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

source $HOME/.config/plasma-workspace/env/path.sh
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias lzdotfiles='lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME'
