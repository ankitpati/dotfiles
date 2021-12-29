#!/usr/bin/env bash

# Clear out `$PATH` before sourcing `/etc/profile` for root. This is necessary
# because `sudo -i` on macOS doesn’t blank out `$PATH`; it passes it unchanged
# from the sudo’ing user to root.
PATH=''

# Source global definitions
global_profile='/etc/profile'
test -f "$global_profile" && source "$global_profile"
unset global_profile

# `brew` “cowardly refuses to run as root,” so hard-coding is necessary here.
brew_prefix='/usr/local'

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
    gnupath="$brew_prefix/opt/$gnuitem/libexec/gnubin"
    test -d "$gnupath" && EXTRA_BINARIES="$gnupath:$EXTRA_BINARIES"

    # some items prefer not to use `gnu` in their paths
    gnupath="$brew_prefix/opt/$gnuitem/libexec/bin"
    test -d "$gnupath" && EXTRA_BINARIES="$gnupath:$EXTRA_BINARIES"

    # some items, especially the non-g-prefixed ones, require different paths
    gnupath="$brew_prefix/opt/$gnuitem/bin"
    test -d "$gnupath" && EXTRA_BINARIES="$gnupath:$EXTRA_BINARIES"

    # some items install sbins
    gnupath="$brew_prefix/opt/$gnuitem/sbin"
    test -d "$gnupath" && EXTRA_BINARIES="$gnupath:$EXTRA_BINARIES"

    # manpages for the commands
    manpath="$brew_prefix/opt/$gnuitem/libexec/gnuman"
    test -d "$manpath" && EXTRA_MANPAGES="$manpath:$EXTRA_MANPAGES"

    # different standards for different packages
    manpath="$brew_prefix/opt/$gnuitem/libexec/man"
    test -d "$manpath" && EXTRA_MANPAGES="$manpath:$EXTRA_MANPAGES"

    # some manpages are at a different location
    manpath="$brew_prefix/opt/$gnuitem/share/man"
    test -d "$manpath" && EXTRA_MANPAGES="$manpath:$EXTRA_MANPAGES"

    # pkg-config for some tools
    pkgpath="$brew_prefix/opt/$gnuitem/lib/pkgconfig"
    test -d "$pkgpath" && EXTRA_PKGPATHS="$pkgpath:$EXTRA_PKGPATHS"
done

brewbinpath="$brew_prefix/bin"
test -d "$brewbinpath" && EXTRA_BINARIES="$brewbinpath:$EXTRA_BINARIES"

brewsbinpath="$brew_prefix/sbin"
test -d "$brewsbinpath" && EXTRA_BINARIES="$brewsbinpath:$EXTRA_BINARIES"

# clean and export the fruits of the above labour
if test "$use_gnu_binaries" = 'true'; then
    admin_user_home='/Users/ankitpati'
    EXTRA_BINARIES="$admin_user_home/bin:$admin_user_home/.local/bin:$EXTRA_BINARIES"
    EXTRA_MANPAGES="$admin_user_home/man:$admin_user_home/.local/share/man:$EXTRA_MANPAGES"
    EXTRA_DYLDPATH="$admin_user_home/lib:$admin_user_home/.local/lib:$EXTRA_DYLDPATH"
    EXTRA_CLASPATH="$admin_user_home/jar:$admin_user_home/.local/jar:$EXTRA_CLASPATH"
    unset admin_user_home

    export PATH="$(sanitize_path "$EXTRA_BINARIES:$PATH")"
    export MANPATH="$(sanitize_path "$EXTRA_MANPAGES:$MANPATH")"
    export DYLD_LIBRARY_PATH="$(sanitize_path "$EXTRA_DYLDPATH:$DYLD_LIBRARY_PATH")"
    export CLASSPATH="$(sanitize_path "$EXTRA_CLASPATH:$CLASSPATH")"

    export PKG_CONFIG_PATH="$(sanitize_path "$EXTRA_PKGPATHS")"

    # completion for brewed binaries
    completions="$brew_prefix/etc/profile.d/bash_completion.sh"
    test -f "$completions" && \
        source "$completions"

    # colours for `tree`
    command -v dircolors &>/dev/null && eval "$(dircolors -b)"

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

else
    alias updatedb='/usr/libexec/locate.updatedb' # macOS exclusive
fi

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

unset brew_prefix
