alias dotfiles="cd ~/dotfiles/"

if [[ $IS_LINUX -eq 1 ]]; then
    alias work="tmux attach -t work"
    alias sr="supervisorctl restart"
    alias sst="supervisorctl status"
    alias clip="nc --send-only localhost 8377"
else
    alias clip="nc localhost 8377"
fi

alias v='fasd -e vim'
alias tkill='tmux kill-session -t'
alias ta='tmux attach -t'
alias tls='tmux ls'
alias ts='tmux new -s'
alias top_committers='git shortlog -sne'
alias ad='arc diff'
alias adp='arc diff --preview'
alias urc='ur cleopatra'
