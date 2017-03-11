autoload -U promptinit; promptinit
prompt pure

source $(brew --prefix)/share/antigen/antigen.zsh

antigen bundle git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle olivierverdier/zsh-git-prompt
antigen bundle mafredri/zsh-async

antigen apply

eval "$(fasd --init zsh-hook posix-alias)"

# aliases

alias md='mkdir -p'

alias tls='tmux list-sessions'
alias tat='tmux attach-session -t'
alias vim='nvim'
alias org='gorganizer'
alias k='kanban'

alias v='f -e nvim' # quick opening files with vim
alias o='a -e open' #  open any file

export EDITOR=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export PATH=/Users/sam/bin:./node_modules/.bin:/Users/sam/go/bin:/Users/smarshall/.cargo/bin:$PATH
export GOPATH=/Users/sam/go

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
