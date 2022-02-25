#!/usr/bin/env bash

sanitize_path()
{
    # Utility function to sanitize PATH-like specifications.
    # Do not allow
    # 1. repeated elements,
    # 2. repeated, starting, or ending `:`, and
    # 3. repeated `/`.
    echo -n "$1" | awk -v 'RS=:' -v 'ORS=:' '!seen[$0]++' \
                 | sed 's/::*/:/g' | sed 's/^://' | sed 's/:$//' \
                 | sed 's_//*_/_g'
}

# delete CPANM cache
B-clean-cpanm()
{
    echo 'Removing the CPANM Work Cache...'
    rm -rf "$HOME/.cpanm/"{'work/','build.log','latest-build'}
}

# prepend old binaries to PATH
B-oldbin()
{
    export PATH="$(sanitize_path "$HOME/oldbin:$PATH")"
    hash -r
}

main()
{
    # Source global definitions
    local global_profile='/etc/profile'
    test -f "$global_profile" && source "$global_profile"

    mesg n || true

    # Ensure `source`s below this see the correct `$MANPATH`.
    local manpath="$MANPATH"
    unset MANPATH
    export MANPATH="$(sanitize_path "$manpath:$(manpath)")"

    export PERL_CPANM_OPT='--from https://www.cpan.org/ --verify'
    export PERLBREW_CPAN_MIRROR='https://www.cpan.org/'
    export PERL5LIB="$HOME/lib/perl5/"
    export PERLCRITIC="$HOME/.perlcriticrc"
    export PYENV_ROOT="$HOME/.pyenv/"
    export NPM_PACKAGES="$HOME/.npm/packages/"
    export SDKMAN_DIR="$HOME/.sdkman/"
    export MYPY_CACHE_DIR="$HOME/.mypy_cache/"
    export MYPYPATH="$HOME/.mypy_stubs/"
    export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"
    export ANDROID_HOME="$HOME/Android/Sdk/"

    # Text editors
    export EDITOR='vim'
    export MERGE='vimdiff'

    # Telemetry
    export DOTNET_CLI_TELEMETRY_OPTOUT='1'
    export POWERSHELL_TELEMETRY_OPTOUT='1'
    export SRC_DISABLE_USER_AGENT_TELEMETRY='1'

    # History configuration
    shopt -s histappend
    export HISTSIZE=''
    export HISTFILESIZE=''
    export HISTCONTROL='ignoreboth'
    test -z "$(echo "$PROMPT_COMMAND" | grep '\bhistory\b')" && \
        export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

    alias egrep='grep -E'
    alias fgrep='grep -F'
    alias grepp='grep -P'
    alias grep='grep --color=auto'
    alias l='ls -CF'
    alias l.='ls -d .*'
    alias la='ls -A'
    alias ll='ls -alF'
    alias ls='ls --color=auto'
    alias ncdu='ncdu --color dark'
    alias tree='tree -I ".git|node_modules"'
    alias cpan-outdated='cpan-outdated --mirror="$PERLBREW_CPAN_MIRROR"'
    alias podchecker='podchecker -warnings -warnings -warnings'
    alias tohex="hexdump -ve '1/1 \"%.2x\" '"
    # shellcheck disable=SC2154
    alias unchomp='sed -i -e \$a\\ '
    alias ssh='exec ssh'
    alias telnet='exec telnet'
    alias mosh='exec mosh'
    alias git-sh='exec git-sh'
    alias ssh-copy-id='ssh-copy-id -oPasswordAuthentication=yes'

    export PATH="$(sanitize_path "$HOME/bin:$HOME/.local/bin:$PATH")"

    # Only on Debian and derivatives
    test -n "$(command grep -i 'debian' '/etc/os-release')" && \
        source <(SHELL='/bin/sh' lesspipe) && \
        source <(dircolors -b)

    # perl local::lib
    export PATH="$(sanitize_path "$HOME/perl5/bin:$PATH")"
    export PERL5LIB="$(sanitize_path "$HOME/perl5/lib/perl5:$PERL5LIB")"
    export PERL_LOCAL_LIB_ROOT="$(sanitize_path "$HOME/perl5:$PERL_LOCAL_LIB_ROOT")"
    export PERL_MB_OPT="--install_base '$HOME/perl5'"
    export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"

    # cargo
    export PATH="$(sanitize_path "$HOME/.cargo/bin:$PATH")"

    # go
    export PATH="$(sanitize_path "$HOME/go/bin:$PATH")"

    # php
    export PATH="$(sanitize_path "$HOME/.composer/vendor/bin:$PATH")"

    # npm
    #npm config set prefix "$NPM_PACKAGES"
    export PATH="$(sanitize_path "$NPM_PACKAGES/bin:$PATH")"

    # sdkman
    local sdkman_init="$SDKMAN_DIR/bin/sdkman-init.sh"
    test -f "$sdkman_init" && source "$sdkman_init"

    # dart & flutter
    #dart --disable-analytics
    #flutter config --no-analytics
    export PATH="$(sanitize_path "$HOME/snap/flutter/common/flutter/bin:$PATH")"

    # lua
    local lua_version='5.4' # TODO: automate this
    export LUA_PATH=";;$HOME/.luarocks/share/lua/$lua_version/?.lua;$HOME/.luarocks/share/lua/$lua_version/?/init.lua"
    export LUA_CPATH=";;$HOME/.luarocks/lib64/lua/$lua_version/?.so"
    export PATH="$(sanitize_path "$HOME/.luarocks/bin:$PATH")"

    # android
    export PATH="$(sanitize_path "$HOME/Android/Sdk/platform-tools:$PATH")"

    return 0
}

# invoke `main` & cleanup
main
unset -f main
