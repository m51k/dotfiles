ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
HISTDUP=erase
unsetopt beep
setopt share_history 
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_save_no_dups
setopt hist_find_no_dups
setopt hist_verify
bindkey -e

bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

autoload -Uz compinit && compinit

# fzf stuff
source <(fzf --zsh)
export FZF_DEFAULT_COMMAND='fd --type file --hidden --no-ignore'
# export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS" --color=fg:#f2f4f8,bg:#161616,hl:#78a9ff,fg+:#f2f4f8,bg+:#2a2a2a,hl+:#8cb6ff,info:#25be6a,prompt:#78a9ff,pointer:#ee5396,marker:#f16da6,spinner:#25be6a,header:#be95ff"

# zoxide stuff
eval "$(zoxide init zsh)"
alias 'cd'=z
source $HOME/.config/plasma-workspace/env/path.sh

export EDITOR=nvim
export MANPAGER='nvim +Man!'

alias vim=nvim
alias dotfiles='/usr/bin/git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
alias lzdotfiles='lazygit --git-dir=$HOME/.dotfiles --work-tree=$HOME'
alias ls="ls --color"

eval "$(starship init zsh)"
