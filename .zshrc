# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.zsh/p10k.zsh ]] && source ~/.zsh/p10k.zsh # Init Powerlevel10k
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh # Load Powerlevel10k


[[ -f ~/.zsh/aliases.zsh ]] && source ~/.zsh/aliases.zsh
[[ -f ~/.zsh/functions.zsh ]] && source ~/.zsh/functions.zsh
[[ -f ~/.zsh/nvm.zsh ]] && source ~/.zsh/nvm.zsh


# Allow parent to initialize shell.
# Run command through fetched environment variable.
if [[ -n $ZSH_INIT_COMMAND ]]; then
  echo "INIT_COMMAND: $ZSH_INIT_COMMAND"
  eval "$ZSH_INIT_COMMAND"
fi
