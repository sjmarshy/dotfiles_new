source "${HOME}/.zgen/zgen.zsh"

# if the init scipt doesn't exist
if ! zgen saved; then

  # specify plugins here
  zgen oh-my-zsh
  zgen oh-my-zsh plugins/git

  zgen load zsh-users/zsh-syntax-highlighting
  zgen load olivierverdier/zsh-git-prompt
  zgen load zsh-users/zsh-completions
  
  # generate the init script from plugins above
  zgen save
fi

autoload -U promptinit; promptinit
prompt pure

eval "$(fasd --init zsh-hook posix-alias)"

# aliases

alias md='mkdir -p'

alias tls='tmux list-sessions'
alias tat='tmux attach-session -t'
alias vim='nvim'
alias org='gorganizer'

alias v='f -e nvim' # quick opening files with vim
alias o='a -e open' #  open any file

alias k='kanban'

transfer() {
    # write to output to tmpfile because of progress bar
    tmpfile=$( mktemp -t transferXXX )
    curl --progress-bar --upload-file $1 https://transfer.sh/$(basename $1) >> $tmpfile;
    cat $tmpfile;
    rm -f $tmpfile;
}

alias transfer=transfer

export EDITOR=nvim

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

export PATH=$HOME/bin:./node_modules/.bin:$HOME/go/bin:$HOME/.cargo/bin:$PATH
export GOPATH=$HOME/go

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh


hist import
