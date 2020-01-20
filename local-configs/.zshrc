export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="avit"
plugins=(git github ssh-agent)
. /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

zstyle :omz:plugins:ssh-agent agent-forwarding on
zstyle :omz:plugins:ssh-agent identities id_rsa id_dsa.suslik-root id_rsa.suslik

source $ZSH/oh-my-zsh.sh

export XDG_CONFIG_HOME="$HOME/.config"
export SSH_AUTH_SOCK="${XDG_RUNTIME_DIR}/ssh-agent.socket"
export PATH="/usr/local/bin:$PATH"
export PATH="/media/dev/arcadia:$PATH"
export PATH="/snap/bin:$PATH"
export EDITOR=vim
export YT_LOG_LEVEL=INFO

alias cp='cp -v'
alias mv='mv -v'
alias rm='rm -v'
alias mkdir='mkdir -pv'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

source /home/vvgolubev/.yql/shell_completion
