# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
alias ohmyzsh="nvim ~/.oh-my-zsh"

alias sudo='sudo ';

export PATH=/usr/local/go/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.linuxbew/bin:$PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

export HUMANLOG_INSTALL="/home/mbc/.humanlog"
export PATH="$HUMANLOG_INSTALL/bin:$PATH"

export GOPATH=/home/mbc/go
export GOBIN=$(echo $GOPATH/bin)
export PATH=$GOBIN:$PATH

alias vim="nvim"

. "$HOME/.cargo/env"

#alias ls="exa --tree --level=2 --long"
alias ls="exa --long"
alias mono=dotnet

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

DOCKER_DIR=/mnt/wsl/shared-docker
function start_docker() {
    mkdir -pm o=,ug=rwx "$DOCKER_DIR"
    sudo chgrp docker "$DOCKER_DIR"
    sudo ln -s  /mnt/wsl/shared-docker/docker.sock  /var/run/docker.sock
    sudo dockerd
}
#alias sdocker='mkdir -pm o=,ug=rwx "$DOCKER_DIR" && sudo chgrp docker "$DOCKER_DIR" && sudo ln -s  /mnt/wsl/shared-docker/docker.sock  /var/run/docker.sock && sudo dockerd'
alias sdocker=start_docker

DOCKER_SOCK="/mnt/wsl/shared-docker/docker.sock"
test -S "$DOCKER_SOCK" && export DOCKER_HOST="unix://$DOCKER_SOCK"
alias docker="docker -H unix:///mnt/wsl/shared-docker/docker.sock"

alias grafana="kubectl port-forward svc/kube-prometheus-stack-grafana 3000:80 -n kube-prometheus-stack"
alias kpod="kubectl scale --replicas=0"
alias spod="kubectl scale --replicas=1"
alias rpod="kubectl rollout restart"
alias klog="kubectl logs"
alias klogf="kubectl logs -f"

alias cat=bat
alias gitui=gitui -t "~/.config/gitui/mocha.ron"

alias zig="$HOME/dev/zig/zig"
alias zls="$HOME/dev/zls/zig-out/bin/zls"

alias lg="lazygit"

declare -A pomo_options
pomo_options["work"]="45"
pomo_options["break"]="10"

pomodoro () {
  if [ -n "$1" -a -n "${pomo_options["$1"]}" ]; then
  val=$1
  echo $val | lolcat
  timer ${pomo_options["$val"]}m
  spd-say "'$val' session done"
  fi
}

alias wo="pomodoro 'work'"
alias br="pomodoro 'break'"

export PKG_CONFIG_PATH=/usr/lib/x86_64-linux-gnu/pkgconfig/

# Load Angular CLI autocompletion.
source <(ng completion script)

