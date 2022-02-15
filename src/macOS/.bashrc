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

# delete junk files
B-delds()
{
    echo 'Removing the following files...'
    find "$HOME" -not \( -path "$HOME/Mounts" -prune \) \
           -regextype egrep \
           -regex '.*(\.(DS_Store|AppleDouble|AppleDesktop)|Thumbs\.db)$' \
           -print \
           -exec rm -rf {} +

    echo 'Removing broken symlinks...'
    find "$HOME" -not \( -path "$HOME/Mounts" -prune \) \
            -type l \
            ! -exec test -e {} \; \
            -print \
            -exec rm -rf {} +

    echo 'Removing the QuickLook Cache...'
    qlmanage -r cache
}

# delete Homebrew and Perlbrew caches
B-clean-cache()
{
    echo 'Uninstalling dangling Homebrew packages...'
    brew autoremove

    echo 'Removing the Homebrew Build Cache...'
    brew cleanup --prune=all

    echo 'Removing the Perlbrew Build Cache...'
    perlbrew clean

    echo 'Removing the CPANM Work Cache...'
    rm -rf "$HOME/.cpanm/"{'work/','build.log','latest-build'}

    echo 'Removing the PIP Cache...'
    rm -rf "$HOME/Library/Caches/pip/"
}

# compact Homebrew git repositories
B-brew-compact()
{
    echo 'Running `git cleanup` on Homebrew...'
    for brewtap in "$brew_prefix/Homebrew" \
                   "$brew_prefix/Homebrew/Library/Taps/"*/*
    do
        git -C "$brewtap" cleanup
    done
}

# clean all the things!
B-clean-all()
{
    B-delds
    B-clean-cache
    B-brew-compact

    echo 'Compacting Bash History...'
    cbh
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

    local brew_prefix="$(brew --prefix)"

    # GRC Colourification
    local grc_bashrc="$brew_prefix/etc/grc.bashrc"
    test -f "$grc_bashrc" && source "$grc_bashrc"

    # Ensure `source`s below this see the correct `$MANPATH`.
    local manpath="$MANPATH"
    unset MANPATH
    export MANPATH="$(sanitize_path "$manpath:$(manpath)")"

    export EDITOR='vim'
    export MERGE='vimdiff'
    export DOTNET_CLI_TELEMETRY_OPTOUT='1'
    export POWERSHELL_TELEMETRY_OPTOUT='1'

    # History Configuration
    shopt -s histappend
    export HISTSIZE=''
    export HISTFILESIZE=''
    export HISTCONTROL='ignoreboth'
    test -z "$(echo "$PROMPT_COMMAND" | grep '\bhistory\b')" && \
        export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

    # Brew Prevent Time-Consuming Activities
    export HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK='1'
    export HOMEBREW_NO_AUTO_UPDATE='1'
    export HOMEBREW_NO_ANALYTICS='1'

    # Secure Brew
    export HOMEBREW_NO_INSECURE_REDIRECT='1'

    # Syntax-highlighted Brew Output
    export HOMEBREW_BAT='1'

    # RLWrap
    export RLWRAP_HOME="$HOME/.rlwrap"
    export RLWRAP_EDITOR="vim '+call cursor(%L,%C)'"

    # Mypy (Python static typing)
    export MYPYPATH="$HOME/.mypy_stubs/"
    export MYPY_CACHE_DIR="$HOME/.mypy_cache/"

    # Perlcritic
    export PERLCRITIC="$HOME/.perlcriticrc"

    # ripgrep
    export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

    # Oracle Database
    export ORACLE_HOME='/Library/Oracle/instantclient_12_2'
    export ORACLE_SID='XE'

    # PostgreSQL
    export PGDATA="$brew_prefix/var/postgres"

    # JBOSS
    export JBOSS_HOME="$brew_prefix/opt/wildfly-as/libexec"

    # DocBook Catalogs
    export XML_CATALOG_FILES="$brew_prefix/etc/xml/catalog"

    # Wine Freetype Bug
    export FREETYPE_PROPERTIES='truetype:interpreter-version=35'

    # get the superior versions of common binaries
    local extra_binaries=''
    local extra_manpages=''
    local extra_pkgpaths=''
    local extra_dyldpath=''
    local extra_claspath=''

    local use_gnu_binaries='true'

    # keep more important items after less important ones
    local gnuitem
    for gnuitem in \
        wildfly-as \
        artifactory \
        swift \
        sphinx-doc \
        jpeg-turbo \
        sqlite \
        icu4c \
        openldap \
        cython \
        opencolorio \
        libxml2 \
        texinfo \
        apr-util \
        apr \
        libarchive \
        mozjpeg \
        libxslt \
        subversion \
        expat \
        ruby \
        ssh-copy-id \
        bzip2 \
        unzip \
        zip \
        file-formula \
        krb5 \
        qt \
        libpcap \
        e2fsprogs \
        gnu-which \
        gnu-indent \
        gnu-units \
        gnu-time \
        gnu-sed \
        gnu-tar \
        libressl \
        gnu-getopt \
        gettext \
        ncurses \
        libtool \
        rpcgen \
        unifdef \
        flex \
        bison \
        curl \
        bc \
        make \
        grep \
        ed \
        m4 \
        man-db \
        gcc \
        lsof \
        util-linux \
        inetutils \
        binutils \
        findutils \
        coreutils \
    ;
    do
        # BSD-shadowing versions of g-prefixed items
        local gnupath="$brew_prefix/opt/$gnuitem/libexec/gnubin"
        test -d "$gnupath" && extra_binaries="$gnupath:$extra_binaries"

        # some items prefer not to use `gnu` in their paths
        local gnupath="$brew_prefix/opt/$gnuitem/libexec/bin"
        test -d "$gnupath" && extra_binaries="$gnupath:$extra_binaries"

        # some items, especially the non-g-prefixed ones, require different paths
        local gnupath="$brew_prefix/opt/$gnuitem/bin"
        test -d "$gnupath" && extra_binaries="$gnupath:$extra_binaries"

        # some items install sbins
        local gnupath="$brew_prefix/opt/$gnuitem/sbin"
        test -d "$gnupath" && extra_binaries="$gnupath:$extra_binaries"

        # manpages for the commands
        local manpath="$brew_prefix/opt/$gnuitem/libexec/gnuman"
        test -d "$manpath" && extra_manpages="$manpath:$extra_manpages"

        # different standards for different packages
        local manpath="$brew_prefix/opt/$gnuitem/libexec/man"
        test -d "$manpath" && extra_manpages="$manpath:$extra_manpages"

        # some manpages are at a different location
        local manpath="$brew_prefix/opt/$gnuitem/share/man"
        test -d "$manpath" && extra_manpages="$manpath:$extra_manpages"

        # pkg-config for some tools
        local pkgpath="$brew_prefix/opt/$gnuitem/lib/pkgconfig"
        test -d "$pkgpath" && extra_pkgpaths="$pkgpath:$extra_pkgpaths"
    done

    local pypypath="$brew_prefix/share/pypy" # Keep at end to avoid overwriting CPython.
    test -d "$pypypath" && extra_binaries="$extra_binaries:$pypypath"

    local brewbinpath="$brew_prefix/bin"
    test -d "$brewbinpath" && extra_binaries="$brewbinpath:$extra_binaries"

    local brewsbinpath="$brew_prefix/sbin"
    test -d "$brewsbinpath" && extra_binaries="$brewsbinpath:$extra_binaries"

    local icecreampath="$brew_prefix/opt/icecream/libexec/icecc/bin"
    test -d "$icecreampath" && extra_binaries="$icecreampath:$extra_binaries"

    local anacondapath="$brew_prefix/anaconda3/bin"
    test -d "$anacondapath" && extra_binaries="$anacondapath:$extra_binaries"

    local oraclepath="$ORACLE_HOME"
    test -d "$oraclepath" && extra_binaries="$oraclepath:$extra_binaries"

    local oracledyldpath="$ORACLE_HOME"
    test -d "$oracledyldpath" && extra_dyldpath="$oracledyldpath:$extra_dyldpath"

    local oracleclaspath="$ORACLE_HOME"
    test -d "$oracleclaspath" && extra_claspath="$oracleclaspath:$extra_claspath"

    local flutterpath="$HOME/flutter/bin"
    test -d "$flutterpath" && extra_binaries="$flutterpath:$extra_binaries"

    local pyenvpath="$HOME/.pyenv/bin"
    test -d "$pyenvpath" && extra_binaries="$pyenvpath:$extra_binaries"

    #local vctlpath="$HOME/.vctl/bin"
    #test -d "$vctlpath" && extra_binaries="$vctlpath:$extra_binaries"

    # clean and export the fruits of the above labour
    if test "$use_gnu_binaries" = 'true'; then
        export PATH="$(sanitize_path "$extra_binaries:$PATH")"
        export MANPATH="$(sanitize_path "$extra_manpages:$MANPATH")"
        export DYLD_LIBRARY_PATH="$(sanitize_path "$extra_dyldpath:$DYLD_LIBRARY_PATH")"
        export CLASSPATH="$(sanitize_path "$extra_claspath:$CLASSPATH")"

        # pyenv
        export PYENV_ROOT="$HOME/.pyenv/"
        # shellcheck disable=SC2154
        test -d "$HOME/.pyenv" && \
            source <(pyenv init -) && \
            source <(pyenv virtualenv-init -) && \
            test -z "$PYENV_ACTIVATE_SHELL" && pyenv activate "$USER"

        # perlbrew
        test -f "$HOME/perl5/perlbrew/etc/bashrc" && \
            source "$HOME/perl5/perlbrew/etc/bashrc"
        export PERL_CPANM_OPT='--from https://www.cpan.org/ --verify'
        export PERLBREW_CPAN_MIRROR='https://www.cpan.org/'

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
        export NPM_PACKAGES="$HOME/.npm/packages/"
        #npm config set prefix "$NPM_PACKAGES"
        export PATH="$(sanitize_path "$NPM_PACKAGES/bin:$PATH")"

        # sdkman
        export SDKMAN_DIR="$HOME/.sdkman/"
        local sdkman_init="$SDKMAN_DIR/bin/sdkman-init.sh"
        test -f "$sdkman_init" && source "$sdkman_init"

        # lua
        local lua_version='5.4' # TODO: automate this
        export LUA_PATH=";;$HOME/.luarocks/share/lua/$lua_version/?.lua;$HOME/.luarocks/share/lua/$lua_version/?/init.lua"
        export LUA_CPATH=";;$HOME/.luarocks/lib64/lua/$lua_version/?.so"
        export PATH="$(sanitize_path "$HOME/.luarocks/bin:$PATH")"

        # CERN Root
        test -f "$brew_prefix/bin/thisroot.sh" && \
           source "$brew_prefix/bin/thisroot.sh"

        # Geant 4
        test -f "$brew_prefix/bin/geant4.sh" && \
           source "$brew_prefix/bin/geant4.sh"

        # ASDF
        test -f "$brew_prefix/opt/asdf/asdf.sh" && \
            source "$brew_prefix/opt/asdf/asdf.sh"

        # OPAM
        test -f "$HOME/.opam/opam-init/init.sh" && \
            source "$HOME/.opam/opam-init/init.sh"

        export PATH="$(sanitize_path "$HOME/bin:$HOME/.local/bin:$PATH")"
        export MANPATH="$(sanitize_path "$HOME/man:$HOME/.local/share/man:$MANPATH")"
        export PKG_CONFIG_PATH="$(sanitize_path "$extra_pkgpaths")"
        export DYLD_LIBRARY_PATH="$(sanitize_path "$HOME/lib:$HOME/.local/lib:$DYLD_LIBRARY_PATH")"
        export CLASSPATH="$(sanitize_path "$HOME/jar:$HOME/.local/jar:$CLASSPATH")"

        export PERL5LIB="$(sanitize_path "$HOME/.local/lib/perl5:$PERL5LIB")"

        # completion for brewed binaries
        local completions="$brew_prefix/etc/profile.d/bash_completion.sh"
        test -f "$completions" && \
            source "$completions"

        # colours for `tree`
        command -v dircolors &>/dev/null && source <(dircolors -b)

        # Google Cloud SDK
        local gcloud_sdk="$brew_prefix/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"
        test -f "$gcloud_sdk/path.bash.inc" &&\
            source "$gcloud_sdk/path.bash.inc"
        test -f "$gcloud_sdk/completion.bash.inc" && \
            source "$gcloud_sdk/completion.bash.inc"

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
        alias brew-cu='brew cu --no-brew-update'

    else
        alias updatedb='/usr/libexec/locate.updatedb'
    fi

    alias B-nagios-start="nagios $brew_prefix/etc/nagios/nagios.cfg"
    alias B-rsyslog-start="rsyslogd -f $brew_prefix/etc/rsyslog.conf -i
                               $brew_prefix/var/run/rsyslogd.pid"
    alias B-influx-start="influxd -config $brew_prefix/etc/influxdb.conf"
    alias B-redis-start="redis-server $brew_prefix/etc/redis.conf"
    alias B-mongo-start="mongod --config $brew_prefix/etc/mongod.conf --auth
                            &>/dev/null &"
    alias B-grafana-start="grafana-server
                    --config=$brew_prefix/etc/grafana/grafana.ini
                    --homepath $brew_prefix/share/grafana
                    cfg:default.paths.logs=$brew_prefix/var/log/grafana
                    cfg:default.paths.data=$brew_prefix/var/lib/grafana
                    cfg:default.paths.plugins=$brew_prefix/var/lib/grafana/plugins"

    # Oracle DB connections
    alias S-ora-tns-yasql='yasql user/pass@tns'
    alias S-ora-tns-rqlplus='rlwrap sqlplus user/pass@tns'
    alias S-ora-tns-sqlplus='sqlplus user/pass@tns'

    return 0
}

# invoke `main` & cleanup
main
unset -f main
