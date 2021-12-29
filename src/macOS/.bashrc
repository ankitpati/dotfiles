#!/usr/bin/env bash

# Source global definitions
global_profile='/etc/profile'
test -f "$global_profile" && source "$global_profile"
unset global_profile

# GRC Colourification
grc_bashrc='/usr/local/etc/grc.bashrc'
test -f "$grc_bashrc" && source "$grc_bashrc"
unset grc_bashrc

function sanitize_path
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

# Ensure `source`s below this see the correct `$MANPATH`.
manpath="$MANPATH"
unset MANPATH
export MANPATH="$(sanitize_path "$manpath:$(manpath)")"
unset manpath

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
export PGDATA='/usr/local/var/postgres'

# Perforce
export P4EDITOR='vim'

# JBOSS
export JBOSS_HOME='/usr/local/opt/wildfly-as/libexec'

# DocBook Catalogs
export XML_CATALOG_FILES='/usr/local/etc/xml/catalog'

# Wine Freetype Bug
export FREETYPE_PROPERTIES='truetype:interpreter-version=35'

# get the superior versions of common binaries
EXTRA_BINARIES=''
EXTRA_MANPAGES=''
EXTRA_PKGPATHS=''
EXTRA_DYLDPATH=''
EXTRA_CLASPATH=''

use_gnu_binaries='true'

# keep more important items after less important ones
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
    gnupath="/usr/local/opt/$gnuitem/libexec/gnubin"
    test -d "$gnupath" && EXTRA_BINARIES="$gnupath:$EXTRA_BINARIES"

    # some items prefer not to use `gnu` in their paths
    gnupath="/usr/local/opt/$gnuitem/libexec/bin"
    test -d "$gnupath" && EXTRA_BINARIES="$gnupath:$EXTRA_BINARIES"

    # some items, especially the non-g-prefixed ones, require different paths
    gnupath="/usr/local/opt/$gnuitem/bin"
    test -d "$gnupath" && EXTRA_BINARIES="$gnupath:$EXTRA_BINARIES"

    # some items install sbins
    gnupath="/usr/local/opt/$gnuitem/sbin"
    test -d "$gnupath" && EXTRA_BINARIES="$gnupath:$EXTRA_BINARIES"

    # manpages for the commands
    manpath="/usr/local/opt/$gnuitem/libexec/gnuman"
    test -d "$manpath" && EXTRA_MANPAGES="$manpath:$EXTRA_MANPAGES"

    # different standards for different packages
    manpath="/usr/local/opt/$gnuitem/libexec/man"
    test -d "$manpath" && EXTRA_MANPAGES="$manpath:$EXTRA_MANPAGES"

    # some manpages are at a different location
    manpath="/usr/local/opt/$gnuitem/share/man"
    test -d "$manpath" && EXTRA_MANPAGES="$manpath:$EXTRA_MANPAGES"

    # pkg-config for some tools
    pkgpath="/usr/local/opt/$gnuitem/lib/pkgconfig"
    test -d "$pkgpath" && EXTRA_PKGPATHS="$pkgpath:$EXTRA_PKGPATHS"
done

pypypath='/usr/local/share/pypy' # Keep at end to avoid overwriting CPython.
test -d "$pypypath" && EXTRA_BINARIES="$EXTRA_BINARIES:$pypypath"

brewbinpath='/usr/local/bin'
test -d "$brewbinpath" && EXTRA_BINARIES="$brewbinpath:$EXTRA_BINARIES"

brewsbinpath='/usr/local/sbin'
test -d "$brewsbinpath" && EXTRA_BINARIES="$brewsbinpath:$EXTRA_BINARIES"

icecreampath='/usr/local/opt/icecream/libexec/icecc/bin'
test -d "$icecreampath" && EXTRA_BINARIES="$icecreampath:$EXTRA_BINARIES"

anacondapath='/usr/local/anaconda3/bin'
test -d "$anacondapath" && EXTRA_BINARIES="$anacondapath:$EXTRA_BINARIES"

oraclepath="$ORACLE_HOME"
test -d "$oraclepath" && EXTRA_BINARIES="$oraclepath:$EXTRA_BINARIES"

oracledyldpath="$ORACLE_HOME"
test -d "$oracledyldpath" && EXTRA_DYLDPATH="$oracledyldpath:$EXTRA_DYLDPATH"

oracleclaspath="$ORACLE_HOME"
test -d "$oracleclaspath" && EXTRA_CLASPATH="$oracleclaspath:$EXTRA_CLASPATH"

flutterpath="$HOME/flutter/bin"
test -d "$flutterpath" && EXTRA_BINARIES="$flutterpath:$EXTRA_BINARIES"

pyenvpath="$HOME/.pyenv/bin"
test -d "$pyenvpath" && EXTRA_BINARIES="$pyenvpath:$EXTRA_BINARIES"

# clean and export the fruits of the above labour
if test "$use_gnu_binaries" = 'true'; then
    export PATH="$(sanitize_path "$EXTRA_BINARIES:$PATH")"
    export MANPATH="$(sanitize_path "$EXTRA_MANPAGES:$MANPATH")"
    export DYLD_LIBRARY_PATH="$(sanitize_path "$EXTRA_DYLDPATH:$DYLD_LIBRARY_PATH")"
    export CLASSPATH="$(sanitize_path "$EXTRA_CLASPATH:$CLASSPATH")"

    # pyenv
    export PYENV_ROOT="$HOME/.pyenv/"
    export PYENV_VIRTUALENV_DISABLE_PROMPT='1'
    test -d "$HOME/.pyenv" && \
        eval "$(pyenv init -)" && \
        eval "$(pyenv virtualenv-init -)" && \
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
    sdkman_init="$SDKMAN_DIR/bin/sdkman-init.sh"
    test -f "$sdkman_init" && source "$sdkman_init"
    unset sdkman_init

    # lua
    lua_version='5.4' # TODO: automate this
    export LUA_PATH=";;$HOME/.luarocks/share/lua/$lua_version/?.lua;$HOME/.luarocks/share/lua/$lua_version/?/init.lua"
    export LUA_CPATH=";;$HOME/.luarocks/lib64/lua/$lua_version/?.so"
    export PATH="$(sanitize_path "$HOME/.luarocks/bin:$PATH")"
    unset lua_version

    # CERN Root
    test -f '/usr/local/bin/thisroot.sh' && \
       source '/usr/local/bin/thisroot.sh'

    # Geant 4
    test -f '/usr/local/bin/geant4.sh' && \
       source '/usr/local/bin/geant4.sh'

    # ASDF
    test -f '/usr/local/opt/asdf/asdf.sh' && \
        source '/usr/local/opt/asdf/asdf.sh'

    # OPAM
    test -f "$HOME/.opam/opam-init/init.sh" && \
        source "$HOME/.opam/opam-init/init.sh"

    export PATH="$(sanitize_path "$HOME/bin:$HOME/.local/bin:$PATH")"
    export MANPATH="$(sanitize_path "$HOME/man:$HOME/.local/share/man:$MANPATH")"
    export PKG_CONFIG_PATH="$(sanitize_path "$EXTRA_PKGPATHS")"
    export DYLD_LIBRARY_PATH="$(sanitize_path "$HOME/lib:$HOME/.local/lib:$DYLD_LIBRARY_PATH")"
    export CLASSPATH="$(sanitize_path "$HOME/jar:$HOME/.local/jar:$CLASSPATH")"

    export PERL5LIB="$(sanitize_path "$HOME/.local/lib/perl5:$PERL5LIB")"

    # completion for brewed binaries
    completions='/usr/local/etc/profile.d/bash_completion.sh'
    test -f "$completions" && \
        source "$completions"

    # colours for `tree`
    command -v dircolors &>/dev/null && eval "$(dircolors -b)"

    # Google Cloud SDK
    GCLOUD_SDK='/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk'
    test -f "$GCLOUD_SDK/path.bash.inc" &&\
        source "$GCLOUD_SDK/path.bash.inc"
    test -f "$GCLOUD_SDK/completion.bash.inc" && \
        source "$GCLOUD_SDK/completion.bash.inc"

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
    alias bat='bat --paging=never --style=plain --wrap=never --'
    alias tohex="hexdump -ve '1/1 \"%.2x\" '"
    alias unchomp='sed -i -e \$a\\ '
    alias ssh='exec ssh'
    alias telnet='exec telnet'
    alias mosh='exec mosh'
    alias git-sh='exec git-sh'
    alias ssh-copy-id='ssh-copy-id -oPasswordAuthentication=yes'
    alias brew-cu='brew cu --no-brew-update'

else
    alias updatedb='/usr/libexec/locate.updatedb' # macOS exclusive
fi

alias B-nagios-start='nagios /usr/local/etc/nagios/nagios.cfg'
alias B-rsyslog-start='rsyslogd -f /usr/local/etc/rsyslog.conf -i
                           /usr/local/var/run/rsyslogd.pid'
alias B-influx-start='influxd -config /usr/local/etc/influxdb.conf'
alias B-redis-start='redis-server /usr/local/etc/redis.conf'
alias B-mongo-start='mongod --config /usr/local/etc/mongod.conf --auth
                        &>/dev/null &'
alias B-grafana-start='grafana-server
                --config=/usr/local/etc/grafana/grafana.ini
                --homepath /usr/local/share/grafana
                cfg:default.paths.logs=/usr/local/var/log/grafana
                cfg:default.paths.data=/usr/local/var/lib/grafana
                cfg:default.paths.plugins=/usr/local/var/lib/grafana/plugins'

# exec docker exec
function docker
{
    case "$1" in
    'exec' )
        shift
        exec docker exec "$@"
        ;;
    * )
        command docker "$@"
        ;;
    esac
}

# pyenv install 3.8.0 (or whatever)
#function pyenv
#{
#    case "$1" in
#    'install'|'doctor' )
#        LDFLAGS='-L/usr/local/opt/openssl@1.1/lib' \
#        CPPFLAGS='-I/usr/local/opt/openssl@1.1/include' \
#        PATH="/usr/local/opt/openssl@1.1/bin:$HOME/.pyenv/plugins/pyenv-virtualenv/shims:$HOME/.pyenv/shims:$HOME/.pyenv/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin" \
#        command pyenv "$@"
#        ;;
#    * )
#        command pyenv "$@"
#        ;;
#    esac
#}

# delete junk files
function B-delds
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

    echo 'Removing the QuickLook Cache...' # macOS exclusive
    qlmanage -r cache
}

# delete CPANM cache
function B-clean-cpanm
{
    echo 'Removing the CPANM Work Cache...'
    rm -rf "$HOME/.cpanm/"{'work/','build.log','latest-build'}
}

# delete PIP cache
function B-clean-pip
{
    echo 'Removing the PIP Cache...'
    rm -rf "$HOME/Library/Caches/pip/"
}

# delete Homebrew and Perlbrew caches
function B-clean-cache
{
    echo 'Removing the Homebrew Build Cache...'
    brew cleanup --prune=0

    echo 'Removing the Perlbrew Build Cache...'
    perlbrew clean

    B-clean-cpanm
    B-clean-pip
}

# compact Homebrew git repositories
function B-brew-compact
{
    echo 'Running `git cleanup` on Homebrew...'
    for brewtap in '/usr/local/Homebrew' \
                   '/usr/local/Homebrew/Library/Taps/'*/*
    do
        git -C "$brewtap" cleanup
    done
}

# clean all the things!
function B-clean-all
{
    B-delds
    B-clean-cache
    B-brew-compact

    echo 'Compacting Bash History...'
    cbh
}

# prepend old binaries to PATH
function B-oldbin
{
    export PATH="$(sanitize_path "$HOME/oldbin:$PATH")"
    hash -r
}

# Autocompletion for custom git commands
function _git_pick
{
    _git_branch
}

# Oracle DB connections
alias S-ora-tns-yasql='yasql user/pass@tns'
alias S-ora-tns-rqlplus='rlwrap sqlplus user/pass@tns'
alias S-ora-tns-sqlplus='sqlplus user/pass@tns'
