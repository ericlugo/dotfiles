# NVM lazy load
if [ -s "$HOME/.nvm/nvm.sh" ]; then
  [ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"
  alias nvm='unalias nvm node npm nver && . "$NVM_DIR"/nvm.sh && nvm'
  alias node='unalias nvm node npm nver && . "$NVM_DIR"/nvm.sh && node'
  alias npm='unalias nvm node npm nver && . "$NVM_DIR"/nvm.sh && npm'
  alias nver='unalias nvm node npm && . "$NVM_DIR"/nvm.sh && echo "Checking Versions..." && echo "--> NVM: $(nvm -v)" && echo "--> Node.js: $(node -v)" && echo "--> NPM: $(npm -v)"'
fi