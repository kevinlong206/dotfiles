
_ssh_auth_save() {
    ln -sf "$SSH_AUTH_SOCK" "$HOME/.ssh/ssh-auth-sock.$HOSTNAME"
}
alias screen='_ssh_auth_save ; export HOSTNAME=$(hostname) ; screen'
alias tmux='_ssh_auth_save ; export HOSTNAME=$(hostname) ; tmux'



export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
