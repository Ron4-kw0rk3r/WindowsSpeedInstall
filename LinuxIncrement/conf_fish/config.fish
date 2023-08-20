#if status --is-interactive
    # Commands to run in interactive sessions can go here
#    exit
#send




#function reload
#    exec fish
#    set -l config (status -f)
#    echo "reload:  $config"
#end

set -e fish_user_paths
set -U fish_user_paths $HOME/.bin $HOME/.local/bin $HOME/Applications $fish_user_paths

set -x EDITOR nano
set -x VISUAL nano


set TERM "xterm-256color"

#set fish_greeting




# alias 


alias ls="exa --icons --long --header"
alias lr="exa --recurse"


#if type -q exa
#alias ls="exa"
alias xls="exa -a --icons --color=always --group-directories-first"
alias xll="exa -lang --icons --color=always --group-directories-first --octal-permissions"
#end
alias grep="grep --color=auto"


alias spv="vim"
# Added by Radicle.
export PATH="$PATH:/home/ronsec/.radicle/bin"
# added by nim
export PATH="$PATH:/home/ronsec/.nimble/bin"

# added by Anaconda3
export PATH="$PATH:/home/ronsec/anaconda3/condabin/"
export PATH="$PATH:/home/ronsec/anaconda3/bin/"
#export PATH="$PATH:/home/ronsec/anaconda3/bin/conda-env"
# alias bat
# alias docker-desktop
export PATH="$PATH:/opt/docker-desktop/bin/"
alias cat="bat"
starship init fish | source
