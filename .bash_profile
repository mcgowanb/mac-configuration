alias ll="ls -alhtr"
alias mci="mvn clean install"
alias dev="cd ~/dev/git"
alias coll="cd ~/dev/college"
alias gs="git status"
alias cls="clear"
alias pull="git pull"
alias push="git push"
alias fetch="git fetch"

alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'
alias docker-rm-all="docker rm \$(docker ps -a -q);docker rmi \$(docker images -q)"
alias docker-stop-all="docker stop \$(docker ps -a -q)"
alias docker-start-all="docker start \$(docker ps -a -q)"
alias docker-rm-untagged="docker rmi \$(docker images | grep \"^<none>\" | awk \"{print \$3}\")"
alias docker-rm-stopped="docker rm \$(docker ps -a -q)"
alias dps="docker ps -a"
alias ..="cd ../ && ll"
alias ...="cd ../../ && ll"
alias k=kubectl
alias hand="cd ~/dev/git/handmade"
alias gov="cd ~/dev/git/gov"
alias docker-up="docker-compose up -d"
alias docker-down="docker-compose down"
alias dcr="docker-compose restart"
alias dcl="docker-compose logs"
alias dex="docker exec -it"

alias j8="jenv shell 1.8.0.181 && sh $HOME/bin/jdata"
alias j11="jenv shell 11.0 && sh $HOME/bin/jdata"

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

 [ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export PATH="$HOME/.jenv/bin:$PATH:$HOME/bin"
eval "$(jenv init -)"
sh $HOME/bin/jdata

standup() {
    AUTHOR=${AUTHOR:="`git config user.name`"}

    since=yesterday
    if [[ $(date +%u) == 1 ]] ; then
        since="2 days ago"
    fi

    git log --all --since "$since" --oneline --author="$AUTHOR"
}
