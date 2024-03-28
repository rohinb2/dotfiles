alias home="cd ~"
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."
alias .......="cd ../../../../../.."
alias ........="cd ../../../../../../.."
alias .........="cd ../../../../../../../.."
alias ..........="cd ../../../../../../../../.."
alias ...........="cd ../../../../../../../../../.."
alias ............="cd ../../../../../../../../../../.."

alias fixbrew="sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/sbin /usr/local/share/zsh /usr/local/share/zsh/site-functions"
ICLOUD="/Users/rohinbhasin/Library/Mobile Documents/com~apple~CloudDocs"
GDRIVE="/Volumes/GoogleDrive/My Drive/"
SCRIPTS="/Users/rohinbhasin/Library/Mobile Documents/com~apple~CloudDocs/Documents/Scripts"

mkdir -p ~/.logs/
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(history | tail -n 1)" >> ~/.logs/bash-history-${myhostname}-$(date "+%Y-%m-%d").log; fi'

# Zsh equivalent of $PROMPT_COMMAND
precmd() { eval "$PROMPT_COMMAND" }

alias fullhistory="cat ~/.logs/* | grep -a '^20' | sort"

grep_and() {
    #local IFS="$1"; echo "$*";
    c="awk '/$1/"
    args=("$@") 
    for ((i=1; i<${#args[@]}; i++))
    do
        c="$c && /${args[i]}/"
    done
    c="$c'"
    #for var in "$@"
    #do
    #    #c="$c /$var/"
    #    c="$c | grep -i $var"
    #done
    #echo $c
    eval $c
    #awk '/word1/ && /word2/'
}

hist() {
    fullhistory | grep_and $@ | tail -n 30
}

fhgrep() {
    hist | grep $1
}


gplrb() {
    branch=$(git symbolic-ref --short HEAD)
    git checkout master && git pull && git checkout $branch && git rebase master
}

prune() {
    find . -maxdepth 1 -type f -empty -delete
}

#########################
# Facebook/CTRL
#########################
# alias devserver="ssh rohinb2@devvm4259.frc0.facebook.com"
# alias ksudo="kubectl --as $USER --as-group ctrl-privileged"


#########################
# Runhouse
#########################
export AWS_PROFILE=oss
alias work="conda activate rh-env && cd ~/work"
alias rh="conda activate rh-env && cd ~/work/runhouse"
alias mine="conda activate rh-env && cd ~/work/mine"
alias benchmarking="conda activate rh-env && cd ~/work/internal-tools/benchmarking"
dssh() {
    docker exec -itu rh-docker-user $1 /bin/bash
}

