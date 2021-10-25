#!/usr/bin/env bash

# Source global definitions
test -f '/etc/profile' && source '/etc/profile'
test -f '/etc/bashrc'  && source '/etc/bashrc'

# GRC Colourification
grc_bashrc='/usr/local/etc/grc.bashrc'
test -f "$grc_bashrc" && source "$grc_bashrc"

# utility function to sanitize PATH-like specifications
function sanitize_path
{
    # Do not allow repeated elements, repeated, starting, or ending `:`.
    echo -n "$1" | awk -v 'RS=:' -v 'ORS=:' '!seen[$0]++' \
                 | sed 's/::*/:/g' | sed 's/^://' | sed 's/:$//'
}

# Ensure `source`s below this see the correct `$MANPATH`.
export MANPATH="$(sanitize_path "$(manpath)")"

export EDITOR='vim'
export POWERSHELL_TELEMETRY_OPTOUT='1'
export PYENV_VIRTUALENV_DISABLE_PROMPT='1'

# HH Configuration
export HISTSIZE=''
export HISTCONTROL='ignorespace:ignoredups'
export HH_CONFIG='hicolor'
export PROMPT_COMMAND='history -a; history -n;'
[[ "$-" =~ .*i.* ]] && \
    bind '"\C-r": "\C-a hh -- \C-j"' && \
    bind '"\C-xk": "\C-a hh -k \C-j"'

# Brew Prevent Time-Consuming Activities
export HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK='1'
export HOMEBREW_NO_AUTO_UPDATE='1'
export HOMEBREW_NO_ANALYTICS='1'

# RLWrap
export RLWRAP_HOME="$HOME/.rlwrap"
export RLWRAP_EDITOR="vim '+call cursor(%L,%C)'"

# Oracle Database
export ORACLE_HOME='/Library/Oracle/instantclient_12_2'
export ORACLE_SID='XE'

# PostgreSQL
export PGDATA='/usr/local/var/postgres'

# Perforce
export P4PORT='ssl:host.tld:1666'
export P4EDITOR='vim'

# JBOSS
export JBOSS_HOME='/usr/local/opt/wildfly-as/libexec'

# DocBook Catalogs
export XML_CATALOG_FILES='/usr/local/etc/xml/catalog'

# Wine Freetype Bug
export FREETYPE_PROPERTIES='truetype:interpreter-version=35'

# Google Cloud SDK
export CLOUDSDK_CORE_PROJECT=''

# keep macOS Terminal.app from complaining about locales
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'

# get the superior versions of common binaries
EXTRA_BINARIES=''
EXTRA_MANPAGES=''
EXTRA_PKGPATHS=''
EXTRA_DYLDPATH=''
EXTRA_CLASPATH=''

use_gnu_binaries='true'

# keep more important items after less important ones
for gnuitem in 'wildfly-as' 'artifactory' 'sphinx-doc' 'jpeg-turbo' 'sqlite' \
               'icu4c' 'openldap' 'cython' 'opencolorio' 'libxml2' 'texinfo' \
               'apr-util' 'apr' 'libarchive' 'mozjpeg' 'libxslt' \
               'subversion' 'expat' 'bzip2' 'unzip' 'zip' 'file-formula' \
               'krb5' 'qt' 'libpcap' 'e2fsprogs' \
               'gnu-units' 'gnu-sed' 'gnu-tar' \
               'libressl' 'gnu-getopt' 'gettext' 'ncurses' 'flex' 'bison' \
               'curl' 'make' 'grep' 'ed' 'binutils' 'findutils' 'coreutils'
             # 'tcl-tk' 'ccache'
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
    test -d "$HOME/.pyenv" && \
        eval "$(pyenv init -)" && \
        eval "$(pyenv virtualenv-init -)" && \
        test -z "$PYENV_ACTIVATE_SHELL" && pyenv activate ankitpati

    # perlbrew
    test -f "$HOME/perl5/perlbrew/etc/bashrc" && \
        source "$HOME/perl5/perlbrew/etc/bashrc"
    export PERL_CPANM_OPT='--mirror https://cpan.metacpan.org/'
    export PERLBREW_CPAN_MIRROR='https://cpan.metacpan.org/'

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

    export PATH="$(sanitize_path "$HOME/bin:$HOME/go/bin:$PATH")"
    export MANPATH="$(sanitize_path "$HOME/man:$MANPATH")"
    export PKG_CONFIG_PATH="$(sanitize_path "$EXTRA_PKGPATHS")"
    export DYLD_LIBRARY_PATH="$(sanitize_path "$HOME/lib:$DYLD_LIBRARY_PATH")"
    export CLASSPATH="$(sanitize_path "$HOME/jar:$CLASSPATH")"

    export PERL5LIB="$(sanitize_path "$HOME/lib/perl5:$PERL5LIB")"

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

else
    alias updatedb='/usr/libexec/locate.updatedb' # macOS exclusive
fi

alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grepp='grep --color=auto -P'
alias grep='grep --color=auto'
alias l='ls -CF'
alias l.='ls -d .* --color=auto'
alias la='ls -A'
alias ll='ls -alF'
alias ls='ls --color=auto'
alias tree='tree -I .git'
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

# Autocompletion for custom git commands
function _git_pick
{
    _git_branch
}

function _git_publish
{
    _git_branch
}

function _git_files
{
    _git_branch
}

# Oracle DB connections
alias S-ora-tns-yasql='yasql user/pass@tns'
alias S-ora-tns-rqlplus='rlwrap sqlplus user/pass@tns'
alias S-ora-tns-sqlplus='sqlplus user/pass@tns'
