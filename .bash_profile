alias ls="ls -GFaoh"
alias gst="git status"
alias gdt="git diff --word-diff=color"
alias glol="git log --oneline -n 10"

# Succinct cwd prompt
PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 30 ]; then CurDir=...${DIR:${#DIR}-27}; else CurDir=$DIR; fi'
PS1="[\$CurDir] \$ "

# Rust environment setup
[ -f ~/.cargo/env ] && . ~/.cargo/env

# NVM: Node.js version manager
if [ -s "$NVM_DIR/nvm.sh" ]; then 
  export NVM_DIR="/Users/ewandennis/.nvm"
  . "$NVM_DIR/nvm.sh" 
fi

# Kiex: Elixir version manager
[ -x ~/.kiex/scripts/kiex ] && ~/.kiex/scripts/kiex

# pyenv
[ -x $(which pyenv) ] && eval "$(pyenv init -)"

