alias ll="ls -alhitr"
alias mci="mvn clean install"
alias dev="cd ~/dev/git"
alias coll="cd ~/dev/college"
alias gs="git status"
alias cls="clear"
alias pull="git pull"
alias push="git push"
alias fetch="git fetch"
alias aam="cd ~/dev/git/adtech/adwords/adwords-account-mgt"
alias icc="cd ~/dev/git/adtech/content-api/inventorychangeconsumer"
alias pcc="cd ~/dev/git/adtech/content-api/pricedeltachangeconsumer"
alias gfpm="cd ~/dev/git/adtech/content-api/googlefeedproductmanager"
alias fpc="cd ~/dev/git/adtech/facebook-content-api/facebookpricedeltachangeconsumer"
alias ffpm="cd ~/dev/git/adtech/facebook-content-api/facebookfeedproductmanager"

alias docker-rm-all="docker rm \$(docker ps -a -q);docker rmi \$(docker images -q)"
alias docker-rm-untagged="docker rmi \$(docker images | grep \"^<none>\" | awk \"{print \$3}\")"
alias docker-rm-stopped="docker rm \$(docker ps -a -q)"

alias j8="jenv shell 1.8.0.181 && source ~/.mavenrc && sh $HOME/bin/jdata.sh"
alias j11="jenv shell 11.0 && source ~/.mavenrc && sh $HOME/bin/jdata.sh"

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

 [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

#parse_git_branch() {
#  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
#}

#export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ 
export PATH="$HOME/.jenv/bin:$PATH:$HOME/bin"
eval "$(jenv init -)"
sh $HOME/bin/jdata.sh

