# Terminal
export CLICOLOR=1
export EDITOR=vim
export DISPLAY=:0
shopt -s histappend
set -o vi

# Git completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Environment variables
export JAVA_HOME=$(/usr/libexec/java_home)
export SCALA_HOME="/usr/local/Cellar/scala/2.10.2"

# Alias short cuts
export REPO_ROOT="~/repo"
alias repo="cd $REPO_ROOT"
alias g="git"
alias u="history -n"
alias j6="JAVA_HOME=/System/Library/Java/JavaVirtualMachines/1.6.0.jdk/Contents/Home;java"

# Paths
export PATH=$PATH:~/bin:$REPO_ROOT/cassandra/bin:$HOME/repo/bazel/output:$HOME/repo/grpc/bins/opt
export CPLUS_INCLUDE_PATH=$HOME/repo/grpc/include

# Git prompt 
GIT_PS1_SHOWUPSTREAM="auto"
GIT_PS1_SHOWCOLORHINTS="yes"
GIT_PS1_SHOWDIRTYSTATE="yes"
cwd=`pwd`
source ~/bin/git-prompt.sh
export PROMPT_COMMAND='history -a;__git_ps1 "\u@\h:\W" "\\\$ ";'
# Restore the current working folder
cd $cwd
export PATH=/usr/local/lib:/usr/local/bin:$PATH


