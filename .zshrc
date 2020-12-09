# ============================================================================
# .zshrc configuration
# ============================================================================
ZSH_HOME=$HOME/.zsh
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
CASE_SENSITIVE=true

export CLICOLOR=true
export LSCOLORS="exfxcxdxbxegedabagacad"

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

# ============================================================================
# Prompt
# ============================================================================
eval "$(starship init zsh)"

# ============================================================================
# Plugins
# ============================================================================
source <(antibody init)
antibody bundle zsh-users/zsh-completions
antibody bundle zsh-users/zsh-autosuggestions
antibody bundle zsh-users/zsh-syntax-highlighting
antibody bundle zsh-users/zsh-history-substring-search
antibody bundle ohmyzsh/ohmyzsh path:lib/completion.zsh

# ============================================================================
# Shell completion
# ============================================================================
if type brew &>/dev/null; then
  fpath+=( $(brew --prefix)/share/zsh/site-functions )
 
  autoload -Uz compinit
  compinit
fi

# ============================================================================
# Runtime
# ============================================================================

# Go
export GOPATH=$HOME/Developer/go
export PATH=$GOPATH/bin:$PATH

# Google Cloud SDK
CLOUDSDK_HOME=$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk
source $CLOUDSDK_HOME/path.zsh.inc
source $CLOUDSDK_HOME/completion.zsh.inc
