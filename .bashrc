#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PATH="$HOME/.dotnet/tools/:$PATH"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi='nvim'

eval "$(zoxide init bash)"

PS1='[\u@\h \W]\$ '

export N_PREFIX="$HOME/n"; [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH+=":$N_PREFIX/bin"  # Added by n-install (see http://git.io/n-install-repo).
