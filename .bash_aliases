## docker for windows w/wsl ssh stuff
SSH_ENV="$HOME/.ssh/agent-environment"
function start_agent {
    echo "Initialising new SSH agent..."
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
}
# Source SSH settings, if applicable
if [ -f "${SSH_ENV}" ]; then
    . "${SSH_ENV}" > /dev/null
    ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi
###

export PATH=$PATH:~/go/bin:~/bin

# terraform stuff
alias tfa='terraform apply -auto-approve'
alias tfp='terraform plan'
alias tfd='terraform destroy'

# docker stuff
alias dp='docker ps'
alias dpa='docker ps -a'
alias di='docker images'

alias l='ls -trlah'
alias h='cd ~'
alias u='cd ..'

# nvim
alias n='nvim'
alias v='nvim'
alias al='nvim ~/.bash_aliases && echo sourcing ~/.bash_aliases && source ~/.bash_aliases'
alias px='ps aux'
alias im='docker images'
