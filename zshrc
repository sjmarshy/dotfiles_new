source $(brew --prefix)/share/antigen/antigen.zsh

antigen use oh-my-zsh
antigen bundle zsh-users/zsh-syntax-highlighting

antigen bundle git

antigen theme avit

export PATH=/Users/sam/bin:./node_modules/.bin:$PATH

export NVM_DIR="/Users/sam/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
