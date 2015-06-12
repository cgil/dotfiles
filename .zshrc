### 0. Optional startup profiling
#
# based on http://stackoverflow.com/questions/4351244
#
#
#ZSH_ENABLE_PROFILE=true
if [[ -n $ZSH_ENABLE_PROFILE ]]; then
    zmodload zsh/datetime
    setopt promptsubst
    PS4='+$EPOCHREALTIME %N:%i> '
  # save file stderr to file descriptor 3 and redirect stderr (including trace
  # output) to a file with the script's PID as an extension
  exec 3>&2 2>/tmp/startlog.$$
  # set options to turn on tracing and expansion of commands contained in the
  # prompt
  setopt xtrace prompt_subst
fi

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# setup OSes
if [[ $(uname) = 'Linux' ]]; then
    IS_LINUX=1
fi

if [[ $(uname) = 'Darwin' ]]; then
    IS_MAC=1
fi

if [[ "$VIRTUAL_ENV" != "" ]]; then
    if [ -e "$VIRTUAL_ENV/bin/activate" ]; then
        source "$VIRTUAL_ENV/bin/activate"
    fi
fi

# setup fasd
if which fasd >/dev/null; then
    eval "$(fasd --init auto)"
fi

# setup custom stuff
for f in "$HOME"/dotfiles/inc/zsh/*.zsh; do source $f; done
for f in "$HOME"/dotfiles/inc/theme/*.zsh; do source $f; done
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export UBER_HOME="$HOME/Uber"
export UBER_OWNER="carlos@uber.com"
export VAGRANT_DEFAULT_PROVIDER=aws
export PATH=$PATH:$HOME/bin
export PATH=$PATH:/Users/carlos/Library/Android/sdk/platform-tools

# Load only OSX things
if [[ $IS_MAC -eq 1 ]]; then
    [ -s "/usr/local/bin/virtualenvwrapper.sh" ] && . /usr/local/bin/virtualenvwrapper.sh
    [ -s "$HOME/.nvm/nvm.sh" ] && . $HOME/.nvm/nvm.sh
fi

# because I accidently press Ctrl-s too much...
stty -ixon


## 0. End startup profiling
#

if [[ -n $ZSH_ENABLE_PROFILE ]]; then
  # turn off tracing
  unsetopt xtrace
  # restore stderr to the value saved in FD 3
  exec 2>&3 3>&-
fi
