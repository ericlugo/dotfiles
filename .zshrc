export ZSH="$HOME/.oh-my-zsh"

CASE_SENSITIVE="true"
EDITOR="nvim"

# Plugins to load...
#   Standard plugins: $ZSH/plugins/
#   Custom plugins: $ZSH_CUSTOM/plugins/
plugins=(
  git
  git-commit
  thefuck
  zsh-autosuggestions
  zsh-syntax-highlighting
)

eval $(thefuck --alias)
eval $(thefuck --alias FUCK)

source $ZSH/oh-my-zsh.sh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export LSD_CONFIG_DIR="$HOME/Code/dotfiles/lsd_config.yaml"

alias vi="vim"                               # override: Use NeoVim instead of Vi or VIM... never nano...
alias vim="nvim"                             # override: Use NeoVim instead of Vi or VIM... NEVER NANO....
alias ls="lsd --config-file $LSD_CONFIG_DIR" # override: Use lsd instead and provide config file
alias l="ls -l"                              # shortcut: List files in current directory
alias la="ls -lA"                            # shortcut: List all files in current directory
alias lt='ls --tree'                         # shortcut: List all files in current directory as tree view
alias lat='ls -A --tree'                     # shortcut: List all files in current directory as tree view
alias o="open ."                             # shortcut: Open the current directory in Finder
alias gaa="git add -A"                       # shortcut: Add "almost-all" items
alias gpsh="git push"                        # shortcut: Push to remote
alias gss="git status -s"                    # shortcut: Show short status
alias gs="git status"                        # shortcut: show standard status

alias pltest='echo -e "ue0b3 \ue0b3 ue0b2 \ue0b2 ue0b0 \ue0b0 ue0b1 \ue0b1 ue0b7 \ue0b7 ue0b6 \ue0b6 ue0b4 \ue0b4 ue0b5 \ue0b5 ue0ba \ue0ba ue0bc \ue0bc ue0be \ue0be ue0b8 \ue0b8"'

function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

eval "$(oh-my-posh init zsh --config ~/Code/dotfiles/me.omp.json)"
