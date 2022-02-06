alias ls="ls -GFaoh"
alias gst="git status"
alias gdt="git diff --word-diff=color"
alias glol="git log --oneline -n 10"

# Succinct cwd prompt
PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 30 ]; then CurDir=...${DIR:${#DIR}-27}; else CurDir=$DIR; fi'
PS1="\$CurDir \$ "

# Homebrew setup
[ -x $(which brew) ] && export PATH=/opt/homebrew/bin:$PATH

# Rust environment setup
[ -f ~/.cargo/env ] && . ~/.cargo/env

# NVM: Node.js version manager
if [ -s "$HOME/.nvm/nvm.sh" ]; then 
  export NVM_DIR="$HOME/.nvm"
  . "$NVM_DIR/nvm.sh" 
fi

# Kiex: Elixir version manager
[ -x ~/.kiex/scripts/kiex ] && ~/.kiex/scripts/kiex

# pyenv
if [ -x $(which pyenv) ]; then
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(pyenv init --path)"
  eval "$(pyenv init -)"
fi

