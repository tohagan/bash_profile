

# Ensures that paths are not duplicated when .bash_profile is re-run
# Add more path dirs here
for x in $HOME/bin 
do
  case ":$PATH:" in
    *":$x:"*) :;; # already in path
    *) PATH="$x:$PATH";;
  esac
done

alias j=jobs
alias ll='ls -l'
alias chx="chmod u+x"

alias path="echo \$PATH | tr : '\012' "
alias unpath="tr '\012' : | sed 's/:$//'"
alias edpath='export PATH=`path | edpipe | unpath`'

set -o vi
