test -f '/etc/bashrc' && source '/etc/bashrc'
export PATH="$(sanitize_path "$HOME/.local/bin:$HOME/bin:$PATH")"

# perlbrew
source "$HOME/perl5/perlbrew/etc/bashrc"

# pyenv
export PATH="$(sanitize_path "$HOME/.pyenv/bin:$PATH")"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT='1'
test -z "$PYENV_ACTIVATE_SHELL" && pyenv activate ankitpati
