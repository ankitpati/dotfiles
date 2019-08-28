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
#test -d "$icecreampath" && EXTRA_BINARIES="$icecreampath:$EXTRA_BINARIES"

anacondapath='/usr/local/anaconda3/bin'
#test -d "$anacondapath" && EXTRA_BINARIES="$anacondapath:$EXTRA_BINARIES"

oraclepath="$ORACLE_HOME"
test -d "$oraclepath" && EXTRA_BINARIES="$oraclepath:$EXTRA_BINARIES"

oracledyldpath="$ORACLE_HOME"
test -d "$oracledyldpath" && EXTRA_DYLDPATH="$oracledyldpath:$EXTRA_DYLDPATH"

oracleclaspath="$ORACLE_HOME"
test -d "$oracleclaspath" && EXTRA_CLASPATH="$oracleclaspath:$EXTRA_CLASPATH"

flutterpath="$HOME/flutter/bin"
test -d "$flutterpath" && EXTRA_BINARIES="$flutterpath:$EXTRA_BINARIES"

# clean and export the fruits of the above labour
if test "$use_gnu_binaries" = 'true'; then
    # pyenv
    test -d "$HOME/.pyenv" && \
        export PYENV_ROOT="$HOME/.pyenv"
    eval "$(pyenv init -)"

    export PATH="$(sanitize_path "$EXTRA_BINARIES:$PATH")"
    export MANPATH="$(sanitize_path "$EXTRA_MANPAGES:$MANPATH")"
    export DYLD_LIBRARY_PATH="$(sanitize_path "$EXTRA_DYLDPATH:$DYLD_LIBRARY_PATH")"
    export CLASSPATH="$(sanitize_path "$EXTRA_CLASPATH:$CLASSPATH")"

    # perlbrew
    test -f "$HOME/perl5/perlbrew/etc/bashrc" && \
        source "$HOME/perl5/perlbrew/etc/bashrc"
    export PERL_CPANM_OPT='--mirror https://cpan.metacpan.org/'

    # CERN Root
    #test -f '/usr/local/bin/thisroot.sh' && \
    #   source '/usr/local/bin/thisroot.sh'

    # Geant 4
    #test -f '/usr/local/bin/geant4.sh' && \
    #   source '/usr/local/bin/geant4.sh'

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
    completions='/usr/local/share/bash-completion/bash_completion'
    test -f "$completions" && \
        source "$completions"

    # colours for `tree`
    export LS_COLORS='rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=00:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.zst=01;31:*.tzst=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.wim=01;31:*.swm=01;31:*.dwm=01;31:*.esd=01;31:*.jpg=01;35:*.jpeg=01;35:*.mjpg=01;35:*.mjpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.oga=00;36:*.opus=00;36:*.spx=00;36:*.xspf=00;36:'

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

# delete junk files
function B-delds
{
    echo 'Removing the following files...'
    find "$HOME" -not \( -path "$HOME/Mounts" -prune \) \
           -regextype egrep \
           -regex '.*(\.(DS_Store|AppleDouble|AppleDesktop)|Thumbs\.db)$' \
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

# delete Homebrew and Perlbrew caches
function B-clean-cache
{
    echo 'Removing the Homebrew Build Cache...'
    brew cleanup --prune=0

    echo 'Removing the Perlbrew Build Cache...'
    perlbrew clean

    B-clean-cpanm
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
