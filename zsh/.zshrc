export ZSH="$HOME/.oh-my-zsh"
export XDG_CONFIG_HOME="$HOME/.config"

CASE_SENSITIVE="true"
EDITOR="nvim"
ZSH_TMUX_AUTOSTART="true"
# ZSH_TMUX_DEFAULT_SESSION_NAME="origin"
# ZSH_TMUX_AUTONAME_SESSION="true"

# Plugins to load...
#   Standard plugins: $ZSH/plugins/
#   Custom plugins: $ZSH_CUSTOM/plugins/
plugins=(
  git
  git-commit
  thefuck
  zsh-autosuggestions
  zsh-syntax-highlighting
  tmux
)

eval $(thefuck --alias)
eval $(thefuck --alias FUCK)

source $ZSH/oh-my-zsh.sh
source $HOME/.secrets

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export LSD_CONFIG_DIR="$HOME/Code/dotfiles/zsh/lsd_config.yaml"
export JOPLIN_CONFIG=$HOME/Code/dotfiles/joplin
export JOPLIN_TARGET=$HOME/.config/joplin

alias vi="vim"                               # override: Use NeoVim instead of Vi or VIM... never nano...
alias vim="nvim"                             # override: Use NeoVim instead of Vi or VIM... NEVER NANO....
alias ls="lsd --config-file $LSD_CONFIG_DIR" # override: Use lsd instead and provide config file
alias l="ls -l"                              # shortcut: List files in current directory
alias la="ls -lA"                            # shortcut: List all files in current directory
alias lt='ls --tree'                         # shortcut: List all files in current directory as tree view
alias lta='ls -A --tree'                     # shortcut: List all files in current directory as tree view
alias o="open ."                             # shortcut: Open the current directory in Finder
alias gaa="git add -A"                       # shortcut: Add "almost-all" items
alias gpsh="git push"                        # shortcut: Push to remote
alias gss="git status -s"                    # shortcut: Show short status
alias gs="git status"                        # shortcut: show standard status

alias pltest='echo -e "ue0b3 \ue0b3 ue0b2 \ue0b2 ue0b0 \ue0b0 ue0b1 \ue0b1 ue0b7 \ue0b7 ue0b6 \ue0b6 ue0b4 \ue0b4 ue0b5 \ue0b5 ue0ba \ue0ba ue0bc \ue0bc ue0be \ue0be ue0b8 \ue0b8"'

alias joplin="joplin_setup"
alias cleansubl='rm "$HOME/Library/Application Support/Sublime Text/Local/Session.sublime_session"; la "$HOME/Library/Application Support/Sublime Text/Local";'


function colormap() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

function joplin_setup() {
  # check for existing config removal flag "--clear"
  local removal_flag=false
  if [[ "$1" == "--clear" ]]; then
    removal_flag=true
  fi

  # check for the presence of JOPLIN_CONFIG and JOPLIN_TARGET
  if [[ -n "$JOPLIN_CONFIG" && -n "$JOPLIN_TARGET" ]]; then
  printf "\uf07b  JOPLIN_CONFIG and JOPLIN_TARGET found.\n"
    
    # template setup
    if [[ -f "$JOPLIN_CONFIG/settings.json.template" ]]; then
      printf "\uf505  processing settings.json...\n"
      if [[ "$removal_flag" == true || ! -f "$JOPLIN_TARGET/settings.json" ]]; then
        if [[ "$removal_flag" == true && -f "$JOPLIN_TARGET/settings.json" ]]; then
          printf "\uf1f8  removing obsolete file.\n"
          rm "$JOPLIN_TARGET/settings.json"
        fi
        printf "\uf509  processing template.\n"
        envsubst < "$JOPLIN_CONFIG/settings.json.template" > "$JOPLIN_TARGET/settings.json"
      fi
    else
      printf "\uea87  unable to locate JOPLIN_CONFIG/settings.json.template\n"
    fi

    # keymap setup
    if [[ -f "$JOPLIN_CONFIG/keymap.json" ]]; then
      printf "\uf505  processing keymap.json...\n"
      if [[ "$removal_flag" == true || ! -f "$JOPLIN_TARGET/keymap.json" ]]; then
        if [[ "$removal_flag" == true && -f "$JOPLIN_TARGET/keymap.json" ]]; then
          printf "\uf1f8  removing existing keymap.json\n"
          rm "$JOPLIN_TARGET/keymap.json"
        fi
        printf "\uf0c5  copying keymappings.\n"
        cp "$JOPLIN_CONFIG/keymap.json" "$JOPLIN_TARGET/"
      fi
    else
      printf "\uea87  unable to locate JOPLIN_CONFIG/keymap.json\n"
    fi

    # run joplin
    printf "\uead3  Starting JoplinCLI...\n"
    /usr/local/bin/joplin
  else
    echo "JOPLIN_CONFIG and/or JOPLIN_TARGET not set. Please set them before attempting to run joplin..."
  fi
}


eval "$(oh-my-posh init zsh --config $HOME/Code/dotfiles/oh-my-posh/omp.json)"
# eval "$(tmux new-session -A -s main)"
