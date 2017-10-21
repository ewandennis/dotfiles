alias ls="ls -GFlash"
alias gst="git status"
alias gdt="git diff --word-diff=color"

# Succinct cwd prompt
PROMPT_COMMAND='DIR=`pwd|sed -e "s!$HOME!~!"`; if [ ${#DIR} -gt 30 ]; then CurDir=...${DIR:${#DIR}-27}; else CurDir=$DIR; fi'
PS1="[\$CurDir] \$ "
