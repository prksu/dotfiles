# Created by newuser for 5.9
# ============================================================================
# .zshrc configuration
# ============================================================================
ZSH_HOME=$HOME/.zsh
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000

setopt prompt_subst
setopt append_history
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt interactivecomments
setopt share_history

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# ============================================================================
# Prompt
# ============================================================================
eval "$(starship init zsh)"

# ============================================================================
# Plugins
# ============================================================================
plugins=${ZSH_HOME:-~}/plugins
[[ -f ${plugins}.txt ]] || touch ${plugins}.txt

fpath=(${ZSH_HOME:-~}/antidote/functions $fpath)
autoload -Uz antidote

if [[ ! ${plugins}.zsh -nt ${plugins}.txt ]]; then
  antidote bundle <${plugins}.txt >|${plugins}.zsh
fi

source ${plugins}.zsh

# ============================================================================
# Shell completion
# ============================================================================
fpath=(${ZSH_HOME:-~}/completions $fpath)
autoload -Uz compinit && compinit

# ============================================================================
# Runtime
# ============================================================================
# Go
export PATH=$PATH:/usr/local/go/bin
