# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="spaceship"

### Plugins
fpath=(${ASDF_DIR}/completions $fpath)
plugins=(git docker zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

### Added by Zinit's installer

if [[ ! -f $HOME/.local/share/zinit/zinit.git/zinit.zsh ]]; then
    print -P "%F{33} %F{220}Installing %F{33}ZDHARMA-CONTINUUM%F{220} Initiative Plugin Manager (%F{33}zdharma-continuum/zinit%F{220})…%f"
    command mkdir -p "$HOME/.local/share/zinit" && command chmod g-rwX "$HOME/.local/share/zinit"
    command git clone https://github.com/zdharma-continuum/zinit "$HOME/.local/share/zinit/zinit.git" && \
        print -P "%F{33} %F{34}Installation successful.%f%b" || \
        print -P "%F{160} The clone has failed.%f%b"
fi

source "$HOME/.local/share/zinit/zinit.git/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

# # Load a few important annexes, without Turbo
# # (this is currently required for annexes)
zinit light-mode for \
    zdharma-continuum/z-a-rust \
    zdharma-continuum/z-a-as-monitor \
    zdharma-continuum/z-a-patch-dl \
    zdharma-continuum/z-a-bin-gem-node

### End of Zinit's installer chunk

zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
zinit light zdharma-continuum/fast-syntax-highlighting

### Theming

LS_COLORS=$LS_COLORS:'ow=01;34:' ; export LS_COLORS

SPACESHIP_PROMPT_ORDER=(
  user              # Username section
  sudo              # Sudo indicator
  dir               # Current directory section
  host              # Hostname section
  git               # Git section (git_branch + git_status)
  hg                # Mercurial section (hg_branch  + hg_status)
  node              # Node.js section
  bun               # Bun section
  deno              # Deno section
  golang            # Go version
  # docker          # Docker section
  # docker_compose  # Docker section
  # kubectl         # Kubectl context section
  exec_time         # Execution time
  line_sep          # Line break
  # vi_mode         # Vi-mode indicator
  jobs              # Background jobs indicator
  exit_code         # Exit code section
  char              # Prompt character
)

SPACESHIP_USER_SHOW="always" # Shows System user name before directory name
SPACESHIP_NODE_SHOW=true

SPACESHIP_PROMPT_ADD_NEWLINE=false
# SPACESHIP_PROMPT_SEPARATE_LINE=false # Make the prompt span across two lines
# SPACESHIP_DIR_TRUNC=1 # Shows only the last directory folder name

SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

# Homebrew
export PATH=/opt/homebrew/bin:$PATH

### ASDF
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash

# PNPM GLOBAL
export PNPM_HOME="/home/douglas/.pnpm-store"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# AGENTGURU
export AG_GIT_TOKEN=

# NPM COMMANDS
alias check-deps="pnpx npm-check-updates --format group --interactive"
alias check-ag-deps='pnpx npm-check-updates --format group --interactive "/^@agentguru/"'
alias zsh-update="source ~/.zshrc"
alias zsh-edit="code ~/.zshrc"

# DOCKER COMMANDS
alias docker-clean='docker system prune -a -f'

SVC_LIST=(
  "api-user:10000"
  "api-agency:10013"
  "api-image:10015"
  "api-shopping:10003"
  "api-fare-rules:10005"
  "api-quote:10010"
  "api-booking:10004"
  "api-ticketing:10007"
  "api-order:10008"
  "api-share:10014"
  "api-credit:10020"
  "api-payment:10022"
  "api-extras:10028"
  "api-airline:10001"
  "api-location:10002"
  "api-credential:10018"
  "api-branch:10026"
  "pricing:10011"
  "api-search-flights-data:10019"
  "api-markup:10027"
)

alias port-forward-all="function _port_forward() {
  for SVC_PORT in \$(echo \$SVC_LIST | sed 's/,/ /g'); do
    SVC_NAME=\$(echo \$SVC_PORT | cut -d':' -f1)
    PORT=\$(echo \$SVC_PORT | cut -d':' -f2)
    POD_NAME=\$(kubectl get pod -l app=\$SVC_NAME -o jsonpath='{.items[0].metadata.name}')
    echo \"Starting port-forward for \$SVC_NAME (\$POD_NAME) on port \$PORT\"
    kubectl port-forward pod/\$POD_NAME \$PORT:\$PORT > /dev/null 2>&1 &
  done
  wait
}; _port_forward"

export PATH=$HOME/.local/bin:$PATH
