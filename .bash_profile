# Supress macOS 'The default interactive shell is now zsh.' message
export BASH_SILENCE_DEPRECATION_WARNING=1

# Adds all PATHs
export PATH=/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin
export PATH="/Users/marc/git/bin:$PATH"
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export PATH="/Users/marc/bin:$PATH"

# Set terminal prompt
PS1="\[\e[0;32m\]\u@\h:\[\033[0;36m\]\w\\[\033[1;33m\]\$(__git_ps1)\[\033[0;36m\]\$\[\033[0;37m\] "
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export CLICOLOR=1

# Set alias
alias cdgit="cd ~/git"
alias py="python3"
alias cdweb="cd /opt/homebrew/var/www"
alias cddocker="cd ~/git/moodle-docker-forked"
alias ..="cd .."
alias meld="open -W -a Meld $@"

tmux attach

# Avoid the .lesshst file creation
export LESSHISTFILE=-

# Add bash-completion
if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi