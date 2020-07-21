test -f '/etc/bashrc' && source '/etc/bashrc'
export PATH="$(sanitize_path "$HOME/.local/bin:$HOME/bin:$PATH")"

# perl local::lib
export PATH="$(sanitize_path "$HOME/perl5/bin:$PATH")"
export PERL5LIB="$(sanitize_path "$HOME/perl5/lib/perl5:$PERL5LIB")"
export PERL_LOCAL_LIB_ROOT="$(sanitize_path "$HOME/perl5:$PERL_LOCAL_LIB_ROOT")"
export PERL_MB_OPT="--install_base '$HOME/perl5'"
export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"

# cargo
export PATH="$(sanitize_path "$HOME/.cargo/bin:$PATH")"

# php
export PATH="$(sanitize_path "$HOME/.composer/vendor/bin:$PATH")"

# npm
#npm config set prefix "$NPM_PACKAGES"
export PATH="$(sanitize_path "$NPM_PACKAGES/bin:$PATH")"

# android
export PATH="$(sanitize_path "$HOME/Android/Sdk/platform-tools:$PATH")"
