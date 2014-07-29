
# Terminal
export CLICOLOR=1

# Paths
export PATH=$PATH:~/bin

# Git completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Environment variables
export JAVA_HOME=$(/usr/libexec/java_home)

# Alias short cuts
export REPO_ROOT="~/repo"
alias repo="cd $REPO_ROOT"
alias j6="JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home;java"

# Git prompt 
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
GIT_PS1_SHOWDIRTYSTATE="yes"
cwd=`pwd`
source ~/bin/git-prompt.sh
export PROMPT_COMMAND='__git_ps1 "\u@\h:\W" "\\\$ ";'
# Restore the current working folder
cd $cwd
