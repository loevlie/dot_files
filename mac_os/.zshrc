# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/Denny/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=( git zsh-syntax-highlighting zsh-autosuggestions python colorize zsh-interactive-cd)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# added by Anaconda3 2018.12 installer
# >>> conda init >>>
# # !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$(CONDA_REPORT_ERRORS=false '/Users/Denny/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     \eval "$__conda_setup"
# else
#     if [ -f "/Users/Denny/anaconda3/etc/profile.d/conda.sh" ]; then
# # . "/Users/Denny/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
#         CONDA_CHANGEPS1=false conda activate base
#     else
#         \export PATH="/Users/Denny/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda init <<<

# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH
# added by Anaconda3 2019.07 installer
# >>> conda init >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$(CONDA_REPORT_ERRORS=false '/miniforge3/condabin/conda' shell.bash hook 2> /dev/null)"
if [ $? -eq 0 ]; then
    \eval "$__conda_setup"
else
    if [ -f "/Applications/anaconda3/etc/profile.d/conda.sh" ]; then
# . "/Applications/anaconda3/etc/profile.d/conda.sh"  # commented out by conda initialize
        CONDA_CHANGEPS1=false conda activate base
    else
        \export PATH="/miniforge3/condabin:$PATH"
    fi
fi
unset __conda_setup

alias reload=". ~/.zshrc"
alias runs="python3 manage.py runserver"
alias mkmig="python3 manage.py makemigrations"
alias mig="python3 manage.py migrate"
alias jup_python="/usr/local/opt/python@3.9/bin/python3.9 $1"
alias tailscale="/Applications/Tailscale.app/Contents/MacOS/Tailscale"
alias scp_ubuntu="~/bash_scripts/scp_ubuntu.sh"
alias scpf_ubuntu="~/bash_scripts/scpf_ubuntu.sh"
GITSTATUS_LOG_LEVEL=DEBUG

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/Denny/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/Denny/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/Denny/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/Denny/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

alias hist="git log --oneline --graph --decorate --all"
source ~/powerlevel10k/powerlevel10k.zsh-theme

export PATH="/usr/local/bin:$PATH"

alias qf='() { if [[ "$1" == "-f" ]]; then find / -type f -name "*$2*" 2>/dev/null; else find / -type d -name "*$1*" 2>/dev/null; fi; }'
# Setup 'tmux' to use 'xclip' for accessing the system clipboard.
if command -v xclip &>/dev/null && [[ -n "$TMUX" ]]; then
  alias tmux-copy="tmux save-buffer - | xclip -selection clipboard"
  alias tmux-paste="xclip -o -selection clipboard | tmux load-buffer - && tmux paste-buffer"
fi
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

extract () {
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar e $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via extract()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias finder='nautilus .'
alias gs='git status'
alias gp='git pull'
alias gf='git fetch'
alias gc='git commit -m'
alias diskspace='df -h'
alias myip='hostname -I | cut -d" " -f1'
alias ports='netstat -tulanp'
alias ll='ls -lah'
alias fs="du -sh"
alias c='clear'
alias zshreload='source ~/.zshrc'
alias clearcache='sudo sync; sudo sysctl -w vm.drop_caches=3; sudo sync'


explain_aliases(){
    echo "Alias		Command"
    echo "reload		Reloads the .zshrc configuration file."
    echo "runs		Runs a Django server with Python3."
    echo "mkmig		Makes migrations in a Django project with Python3."
    echo "mig		Applies migrations in a Django project with Python3."
    echo "jup_python	Runs a file with python 3.9."
    echo "tailscale	Starts Tailscale application."
    echo "scp_ubuntu	SCPs file to Ubuntu."
    echo "scpf_ubuntu	SCPs folder to Ubuntu."
    echo "hist		Shows the history of commits as a graph."
    echo "qf		Finds either files or directories that match the provided pattern. It suppresses error messages."
    echo "finder	Opens the current directory in Nautilus."
    echo "gs		Shows the status of your git repository."
    echo "gp		Pulls the latest changes from your git repository."
    echo "gf		Fetches the latest changes from your git repository."
    echo "gc		Commits changes in your git repository with a provided message."
    echo "diskspace	Displays disk usage in human readable format."
    echo "myip		Displays your IP address."
    echo "ports		Displays a list of all open network ports."
    echo "ll		Displays detailed information about files and directories in human readable format."
    echo "fs		Displays disk usage of the current directory in human readable format."
    echo "c		Clears the terminal screen."
    echo "zshreload	Reloads the zsh configuration file."
    echo "clearcache	Flushes cache from memory."
}
