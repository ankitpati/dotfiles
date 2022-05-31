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

# Prepend old binaries to PATH
B-oldbin()
{
    export PATH="$(sanitize_path "$HOME/oldbin:$PATH")"
    hash -r
}

add_brewed_items_to_env()
{
    test -z "$brew_prefix" && \
        return

    # Get the superior versions of common binaries
    local extra_binaries=''
    local extra_claspath=''
    local extra_dyldpath=''
    local extra_manpages=''
    local extra_pkgpaths=''

    # Keep more important items after less important ones
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
        openssl \
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

        # Some items prefer not to use `gnu` in their paths
        local gnupath="$brew_prefix/opt/$gnuitem/libexec/bin"
        test -d "$gnupath" && extra_binaries="$gnupath:$extra_binaries"

        # Some items, especially the non-g-prefixed ones, require different paths
        local gnupath="$brew_prefix/opt/$gnuitem/bin"
        test -d "$gnupath" && extra_binaries="$gnupath:$extra_binaries"

        # Some items install sbins
        local gnupath="$brew_prefix/opt/$gnuitem/sbin"
        test -d "$gnupath" && extra_binaries="$gnupath:$extra_binaries"

        # manpages for the commands
        local manpath="$brew_prefix/opt/$gnuitem/libexec/gnuman"
        test -d "$manpath" && extra_manpages="$manpath:$extra_manpages"

        # Different standards for different packages
        local manpath="$brew_prefix/opt/$gnuitem/libexec/man"
        test -d "$manpath" && extra_manpages="$manpath:$extra_manpages"

        # Some manpages are at a different location
        local manpath="$brew_prefix/opt/$gnuitem/share/man"
        test -d "$manpath" && extra_manpages="$manpath:$extra_manpages"

        # pkg-config for some tools
        local pkgpath="$brew_prefix/opt/$gnuitem/lib/pkgconfig"
        test -d "$pkgpath" && extra_pkgpaths="$pkgpath:$extra_pkgpaths"
    done

    local brewbinpath="$brew_prefix/bin"
    test -d "$brewbinpath" && extra_binaries="$brewbinpath:$extra_binaries"

    local brewsbinpath="$brew_prefix/sbin"
    test -d "$brewsbinpath" && extra_binaries="$brewsbinpath:$extra_binaries"

    # Clean and export the fruits of the above labour
    local admin_user_home='/Users/ankitpati'
    local extra_binaries="$admin_user_home/bin:$admin_user_home/.local/bin:$extra_binaries"
    local extra_claspath="$admin_user_home/jar:$admin_user_home/.local/jar:$extra_claspath"
    local extra_dyldpath="$admin_user_home/lib:$admin_user_home/.local/lib:$extra_dyldpath"
    local extra_manpages="$admin_user_home/man:$admin_user_home/.local/share/man:$extra_manpages"

    export CLASSPATH="$(sanitize_path "$extra_claspath:$CLASSPATH")"
    export DYLD_LIBRARY_PATH="$(sanitize_path "$extra_dyldpath:$DYLD_LIBRARY_PATH")"
    export MANPATH="$(sanitize_path "$extra_manpages:$MANPATH")"
    export PATH="$(sanitize_path "$extra_binaries:$PATH")"
    export PKG_CONFIG_PATH="$(sanitize_path "$extra_pkgpaths:$PKG_CONFIG_PATH")"

    # Completion for brewed binaries
    local completion_file="$brew_prefix/etc/profile.d/bash_completion.sh"
    test -f "$completion_file" && \
        source "$completion_file"
}

main()
{
    # Clear out `$PATH` before sourcing `/etc/profile` for root.
    #
    # This is necessary because `sudo -i` on macOS doesn’t blank out `$PATH`;
    # it passes it unchanged from the sudo’ing user to root.
    #
    # shellcheck disable=SC2123
    PATH=''

    # Source global definitions
    local global_profile='/etc/profile'
    test -f "$global_profile" && \
        source "$global_profile"

    mesg n || true

    local brew_prefix="$(command -v brew &>/dev/null && brew --prefix)"

    # Ensure `source`s below this see the correct `$MANPATH`.
    local manpath="$MANPATH"
    unset MANPATH
    export MANPATH="$(sanitize_path "$manpath:$(manpath)")"

    # Text editors
    export EDITOR='vim'
    export MERGE='vimdiff'

    # Telemetry
    export DOTNET_CLI_TELEMETRY_OPTOUT='1'
    export HOMEBREW_NO_ANALYTICS='1'
    export POWERSHELL_TELEMETRY_OPTOUT='1'
    export SRC_DISABLE_USER_AGENT_TELEMETRY='1'

    # History configuration
    shopt -s histappend
    unset HISTTIMEFORMAT
    export HISTCONTROL='ignoreboth'
    export HISTFILESIZE=''
    export HISTSIZE=''
    test -z "$(echo "$PROMPT_COMMAND" | grep '\bhistory\b')" && \
        export PROMPT_COMMAND="history -a; history -n; $PROMPT_COMMAND"

    alias egrep='grep -E'
    alias fgrep='grep -F'
    alias git-sh='exec git-sh'
    alias grep='grep --color=auto'
    alias grepp='grep -P'
    alias l.='ls -d .*'
    alias l='ls -CF'
    alias la='ls -A'
    alias ll='ls -alF'
    alias ls='ls --color=auto'
    alias mosh='exec mosh'
    alias ncdu='ncdu --color dark'
    alias podchecker='podchecker -warnings -warnings -warnings'
    alias ssh-copy-id='ssh-copy-id -oPasswordAuthentication=yes'
    alias ssh='exec ssh'
    alias telnet='exec telnet'
    alias tohex="hexdump -ve '1/1 \"%.2x\" '"
    alias tree='tree -I ".git|node_modules"'
    # shellcheck disable=SC2154
    alias unchomp='sed -i -e \$a\\ '

    add_brewed_items_to_env
    unset -f add_brewed_items_to_env

    # Colours for `tree`
    command -v dircolors &>/dev/null && \
        source <(dircolors -b)

    return 0
}

# Invoke `main` & cleanup
main
unset -f main
