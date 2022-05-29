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

    command -v qlmanage &>/dev/null && \
        echo 'Removing the QuickLook Cache...' && \
        qlmanage -r cache
}

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

    echo 'Removing Maccy SQLite DB (only works if Maccy is not running)...'
    rm "$HOME/Library/Containers/org.p0deje.Maccy/Data/Library/Application Support/Maccy/Storage.sqlite"*

    # TODO: find & vacuum/remove all NSPersistentContainer SQLite DBs
}

# Compact Homebrew git repositories
B-brew-compact()
{
    echo 'Running `git cleanup` on Homebrew...'
    for brewtap in "$brew_prefix/Homebrew" \
                   "$brew_prefix/Homebrew/Library/Taps/"*/*
    do
        git -C "$brewtap" cleanup
    done
}

# Prepend old binaries to PATH
B-oldbin()
{
    export PATH="$(sanitize_path "$HOME/oldbin:$PATH")"
    hash -r
}

add_brewed_items_to_env()
{
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

    # Clean and export the fruits of the above labour
    export CLASSPATH="$(sanitize_path "$extra_claspath:$CLASSPATH")"
    export DYLD_LIBRARY_PATH="$(sanitize_path "$extra_dyldpath:$DYLD_LIBRARY_PATH")"
    export MANPATH="$(sanitize_path "$extra_manpages:$MANPATH")"
    export PATH="$(sanitize_path "$extra_binaries:$PATH")"
    export PKG_CONFIG_PATH="$(sanitize_path "$extra_pkgpaths:$PKG_CONFIG_PATH")"
}

main()
{
    # Source global definitions
    local global_profile='/etc/profile'
    test -f "$global_profile" && \
        source "$global_profile"

    mesg n || true

    local brew_prefix="$(brew --prefix)"

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

    # Brew Prevent Time-Consuming Activities
    export HOMEBREW_NO_AUTO_UPDATE='1'
    export HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK='1'

    # Secure Brew
    export HOMEBREW_NO_INSECURE_REDIRECT='1'

    # Syntax-highlighted Brew Output
    export HOMEBREW_BAT='1'

    # RLWrap
    export RLWRAP_EDITOR="vim '+call cursor(%L,%C)'"
    export RLWRAP_HOME="$HOME/.rlwrap"

    # ripgrep
    export RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

    # Oracle Database
    export ORACLE_HOME='/Library/Oracle/instantclient_12_2'
    export ORACLE_SID='XE'

    # SDKMAN!
    export SDKMAN_DIR="$HOME/.sdkman/"

    # Android
    export ANDROID_HOME="$HOME/Android/Sdk/"

    # NPM
    export NPM_PACKAGES="$HOME/.npm/packages/"

    # Python
    export MYPYPATH="$HOME/.mypy_stubs/"
    export MYPY_CACHE_DIR="$HOME/.mypy_cache/"
    export PYENV_ROOT="$HOME/.pyenv/"

    # Perl
    export PERL5LIB="$(sanitize_path "$HOME/perl5/lib/perl5:$PERL5LIB")"
    export PERLBREW_CPAN_MIRROR='https://www.cpan.org/'
    export PERLCRITIC="$HOME/.perlcriticrc"
    export PERL_CPANM_OPT='--from https://www.cpan.org/ --verify'
    export PERL_LOCAL_LIB_ROOT="$(sanitize_path "$HOME/perl5:$PERL_LOCAL_LIB_ROOT")"
    export PERL_MB_OPT="--install_base '$HOME/perl5'"
    export PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"

    alias brew-cu='brew cu --no-brew-update'
    alias cpan-outdated='cpan-outdated --mirror="$PERLBREW_CPAN_MIRROR"'
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

    add_brewed_items_to_env;
    unset -f add_brewed_items_to_env

    # pyenv
    # shellcheck disable=SC2154
    test -d "$HOME/.pyenv" && \
        source <(pyenv init -)

    # Perlbrew
    test -f "$HOME/perl5/perlbrew/etc/bashrc" && \
        source "$HOME/perl5/perlbrew/etc/bashrc"

    # Perl local::lib
    export PATH="$(sanitize_path "$HOME/perl5/bin:$PATH")"

    # Cargo
    export PATH="$(sanitize_path "$HOME/.cargo/bin:$PATH")"

    # Go
    export PATH="$(sanitize_path "$HOME/go/bin:$PATH")"

    # Composer
    export PATH="$(sanitize_path "$HOME/.composer/vendor/bin:$PATH")"

    # NPM
    #npm config set prefix "$NPM_PACKAGES"
    export PATH="$(sanitize_path "$NPM_PACKAGES/bin:$PATH")"

    # SDKMAN!
    local sdkman_init="$SDKMAN_DIR/bin/sdkman-init.sh"
    test -f "$sdkman_init" && \
        source "$sdkman_init"

    # Android
    export PATH="$(sanitize_path "$HOME/Android/Sdk/platform-tools:$PATH")"

    # User-installed tools
    export CLASSPATH="$(sanitize_path "$HOME/jar:$HOME/.local/jar:$CLASSPATH")"
    export DYLD_LIBRARY_PATH="$(sanitize_path "$HOME/lib:$HOME/.local/lib:$DYLD_LIBRARY_PATH")"
    export MANPATH="$(sanitize_path "$HOME/man:$HOME/.local/share/man:$MANPATH")"
    export PATH="$(sanitize_path "$HOME/bin:$HOME/.local/bin:$PATH")"
    export PERL5LIB="$(sanitize_path "$HOME/lib/perl5:$HOME/.local/lib/perl5:$PERL5LIB")"

    # Completion for brewed binaries
    local completions="$brew_prefix/etc/profile.d/bash_completion.sh"
    test -f "$completions" && \
        source "$completions"

    # Colours for `tree`
    command -v dircolors &>/dev/null && \
        source <(dircolors -b)

    # Google Cloud SDK
    local gcloud_sdk="$brew_prefix/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"
    test -f "$gcloud_sdk/path.bash.inc" && \
        source "$gcloud_sdk/path.bash.inc"
    test -f "$gcloud_sdk/completion.bash.inc" && \
        source "$gcloud_sdk/completion.bash.inc"

    # Oracle DB connections
    alias S-ora-tns-rqlplus='rlwrap sqlplus user/pass@tns'
    alias S-ora-tns-sqlplus='sqlplus user/pass@tns'
    alias S-ora-tns-yasql='yasql user/pass@tns'

    return 0
}

# Invoke `main` & cleanup
main
unset -f main
