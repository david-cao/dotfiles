# navigation
alias c='clear'
alias la='ls -la'
alias open='xdg-open'

# git
alias gst='git status'
alias gch='git checkout'
alias gchm='git checkout master'
alias gcan='git commit --amend --no-edit'
alias gitl="git log --graph --pretty=format:'%C(magenta)%h%Creset -%C(red)%d%C(yellow) %s %C(cyan)(%cr) %C(dim green)<%an>%Creset' --abbrev-commit"

# kubernetes
ksh() {
  if [ $1 -ne 1 ]
  then
    echo "one argument expected for ksh"
  else
    kubectl exec --stdin --tty $1 -- /bin/sh
  fi
}
