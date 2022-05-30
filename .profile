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
alias devserver="ssh rohinb2@devvm4259.frc0.facebook.com"
alias ksudo="kubectl --as $USER --as-group ctrl-privileged"
alias fixbrew="sudo chown -R $(whoami) /usr/local/bin /usr/local/lib /usr/local/sbin /usr/local/share/zsh /usr/local/share/zsh/site-functions"
ICLOUD="/Users/rohinb2/Library/Mobile Documents/com~apple~CloudDocs"
GDRIVE="/Volumes/GoogleDrive/My Drive/"
SCRIPTS="/Users/rohinb2/Library/Mobile Documents/com~apple~CloudDocs/Documents/Scripts"

mkdir -p ~/.logs/
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(history 1)" >> ~/.logs/bash-history-${myhostname}-$(date "+%Y-%m-%d").log; fi'
alias fullhistory="cat ~/.logs/* | grep '^20' | sort"
hist() {
    fullhistory | grep_and $@ | tail -n 30
}

gplrb() {
    branch=$(git symbolic-ref --short HEAD)
    git checkout master && git pull && git checkout $branch && git rebase master
}
