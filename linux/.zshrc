# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

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

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"
alias tsrc='source /home/dennis/projects/teuas_env/env.sh'
# alias qf='function _qf(){ find / -type d -name "$1" 2>/dev/null; }; _qf'
alias qf='() { if [[ "$1" == "-f" ]]; then find / -type f -name "*$2*" 2>/dev/null; else find / -type d -name "*$1*" 2>/dev/null; fi; }'



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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/home/dennis/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/home/dennis/miniconda3/etc/profile.d/conda.sh" ]; then
#         . "/home/dennis/miniconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/home/dennis/miniconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<

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

export ROS_DOMAIN_ID=101
export CARLA_ROOT=/home/dennis/custom_carla
export CITYSCAPES_DATASET=/home/dennis/projects/seg_datasets/city_scape
export PYENV_ROOT="$HOME/.pyenv"
export PATH=/usr/local/cuda/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
# Setup 'tmux' to use 'xclip' for accessing the system clipboard.
if command -v xclip &>/dev/null && [[ -n "$TMUX" ]]; then
  alias tmux-copy="tmux save-buffer - | xclip -selection clipboard"
  alias tmux-paste="xclip -o -selection clipboard | tmux load-buffer - && tmux paste-buffer"
fi
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

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

export DISABLE_AUTO_TITLE='true'

alias finder='nautilus .'
alias nsrc='source /media/dennis/bulk/projects/NAMC_KEF/env.sh'
alias cn='cd /media/dennis/bulk/projects/NAMC_KEF'
alias test_nc='cd /media/dennis/bulk/projects/NAMC_KEF;source env.sh;cd test;pytest -s'
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
alias update_vault='cd ~/kef_vault;git pull;git commit -am "updating kef docs";git push'
# Function to check for files and remove them silently
check_and_remove_files() {
  local files=("/media/dennis/bulk/projects/NAMC_KEF/kef_env/warm_dep_ws/install/lib/julia/libstdc++.so.6*")

  # Check if files exist
  for file in ${files[@]}; do
    if [[ -e $file ]]; then
      # Remove files and redirect errors to a file
      rm $file 2>> /tmp/julia_errors.txt

      # Notify based on the existence of errors
      if [[ -s /tmp/julia_errors.txt ]]; then
        notify-send "Problem files deleted"
      else
        notify-send "No action needed"
      fi
      return
    fi
  done
}

# Call the function in the background
check_and_remove_files &
autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc