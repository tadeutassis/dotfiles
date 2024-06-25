# setup zinit plugin manager
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
[ ! -d $ZINIT_HOME ] && mkdir -p "$(dirname $ZINIT_HOME)"
[ ! -d $ZINIT_HOME/.git ] && git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
source "${ZINIT_HOME}/zinit.zsh"

# simple prompt
PROMPT=" %B[%F{blue}%~%f]%b%F{magenta} ❯%f "

# highlighting, completions and suggestions
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
autoload -U compinit && compinit      # load completions
zinit light zsh-users/zsh-autosuggestions
# fzf integration
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# completion opts
bindkey "^p" history-search-backward
bindkey "^n" history-search-forward
zstyle ":completion:*" matcher-list 'm:{a-z}={A-Za-z}'
zstyle ":completion:*" list-colors '${(s.:.)LS_COLORS}'

# aliases
alias ls="ls --color"

# command history management
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# >>> conda initialize >>>
# !! Contents within this block are managed by "conda init" !!
__conda_setup="$("/home/tadeutassis/anaconda3/bin/conda" "shell.zsh" "hook" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/tadeutassis/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/tadeutassis/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/tadeutassis/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
# remove "(base)" from prompt
PROMPT=$(echo $PROMPT | sed "s/(base) //")

# put homebrew on the PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# using zoxide to navigate directories
eval "$(zoxide init --cmd cd zsh)"
