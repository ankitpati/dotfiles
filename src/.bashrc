#!/usr/bin/env bash

sanitize_path()
{
    local -n input=$1
    local IFS=':'
    local -a paths

    # remove repeated or ending '/'
    input=${input//\/+(\/)//}
    input=${input%/}
    input=${input//\/:/:}

    read -ra paths <<< "$input"

    local -A paths_map
    local -a sanitized_paths

    local path
    for path in "${paths[@]}"
    do
        if [[ -z $path ]]
        then
            # remove repeated, starting, or ending `:`
            continue
        fi

        # remove repeated elements
        if [[ ! -v paths_map[$path] ]]
        then
            paths_map[$path]=1
            sanitized_paths+=("$path")
        fi
    done

    input=${sanitized_paths[*]}
}

discolour_enclosed_ansi()
{
    # Utility function to remove ANSI colours from strings with correctly
    # enclosed colours.
    #
    # Enclosing should be as Bash expects for `PS1`:
    #  ^A (`\[` or `$'\001'`) to start colour codes,
    #  ^B (`\]` or `$'\002'`) to end colour codes.

    local -n coloured_enclosed_ansi=$1
    coloured_enclosed_ansi=${coloured_enclosed_ansi//$'\001'*([^$'\002'])$'\002'}
}

# Prepend old binaries to PATH
B-oldbin()
{
    PATH="$HOME/oldbin:$PATH"
    sanitize_path PATH
    hash -r
}

add_brewed_items_to_env()
{
    if [[ -z $brew_prefix ]]
    then
        return
    fi

    if [[ $OSTYPE == *linux* ]]
    then
        # Completion for brewed binaries
        local completions_dir="$brew_prefix/etc/bash_completion.d"
        local completion_file
        if [[ -x $completions_dir ]]
        then
            for completion_file in "$completions_dir"/*
            do
                source "$completion_file"
            done
        fi
    elif [[ $OSTYPE == *darwin* ]]
    then
        local brew_postgresql_latest_formula=("$(brew formulae | grep '^postgresql@' | sort -rV | head -n 1)")
        if [[ -z ${brew_postgresql_latest_formula[0]} ]]
        then
            brew_postgresql_latest_formula=()
        fi

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
            "${brew_postgresql_latest_formula[@]}" \
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
            local gnusubpath
            for gnusubpath in {libexec/{gnu,},,s}bin
                # 1. BSD-shadowing versions of g-prefixed items
                # 2. Items not using `gnu` in their paths
                # 3. Items requiring different paths (especially non-g-prefixed ones)
                # 4. Items installing sbins
            do
                local gnupath="$brew_prefix/opt/$gnuitem/$gnusubpath"
                if [[ -d $gnupath ]]
                then
                    extra_binaries="$gnupath:$extra_binaries"
                fi
            done

            # manpages for the commands
            local manpath="$brew_prefix/opt/$gnuitem/libexec/gnuman"
            if [[ -d $manpath ]]
            then
                extra_manpages="$manpath:$extra_manpages"
            fi

            # Different standards for different packages
            local manpath="$brew_prefix/opt/$gnuitem/libexec/man"
            if [[ -d $manpath ]]
            then
                extra_manpages="$manpath:$extra_manpages"
            fi

            # Some manpages are at a different location
            local manpath="$brew_prefix/opt/$gnuitem/share/man"
            if [[ -d $manpath ]]
            then
                extra_manpages="$manpath:$extra_manpages"
            fi

            # pkg-config for some tools
            local pkgpath="$brew_prefix/opt/$gnuitem/lib/pkgconfig"
            if [[ -d $pkgpath ]]
            then
                extra_pkgpaths="$pkgpath:$extra_pkgpaths"
            fi
        done

        local brewbinpath="$brew_prefix/bin"
        if [[ -d $brewbinpath ]]
        then
            extra_binaries="$brewbinpath:$extra_binaries"
        fi

        local brewsbinpath="$brew_prefix/sbin"
        if [[ -d $brewsbinpath ]]
        then
            extra_binaries="$brewsbinpath:$extra_binaries"
        fi

        if ((UID != 0))
        then
            local oraclepath=$ORACLE_HOME
            if [[ -d $oraclepath ]]
            then
                extra_binaries="$oraclepath:$extra_binaries"
            fi

            local oracledyldpath=$ORACLE_HOME
            if [[ -d $oracledyldpath ]]
            then
                extra_dyldpath="$oracledyldpath:$extra_dyldpath"
            fi

            local oracleclaspath=$ORACLE_HOME
            if [[ -d $oracleclaspath ]]
            then
                extra_claspath="$oracleclaspath:$extra_claspath"
            fi

            local flutterpath="$HOME/flutter/bin"
            if [[ -d $flutterpath ]]
            then
                extra_binaries="$flutterpath:$extra_binaries"
            fi

            local pyenvpath="$HOME/.pyenv/bin"
            if [[ -d $pyenvpath ]]
            then
                extra_binaries="$pyenvpath:$extra_binaries"
            fi

            #local vctlpath="$HOME/.vctl/bin"
            #if [[ -d $vctlpath ]]
            #then
            #    extra_binaries="$vctlpath:$extra_binaries"
            #fi
        fi

        # Clean and export the fruits of the above labour
        if ((UID == 0))
        then
            local admin_user_home='/Users/ankitpati'
            local extra_binaries="$admin_user_home/bin:$admin_user_home/.local/bin:$extra_binaries"
            local extra_claspath="$admin_user_home/jar:$admin_user_home/.local/jar:$extra_claspath"
            local extra_dyldpath="$admin_user_home/lib:$admin_user_home/.local/lib:$extra_dyldpath"
            local extra_manpages="$admin_user_home/man:$admin_user_home/.local/share/man:$extra_manpages"
        fi

        CLASSPATH="$extra_claspath:$CLASSPATH"
        DYLD_LIBRARY_PATH="$extra_dyldpath:$DYLD_LIBRARY_PATH"
        MANPATH="$extra_manpages:$MANPATH"
        PATH="$extra_binaries:$PATH"
        PKG_CONFIG_PATH="$extra_pkgpaths:$PKG_CONFIG_PATH"

        # Google Cloud SDK
        if ((UID != 0))
        then
            local gcloud_sdk="$brew_prefix/Caskroom/google-cloud-sdk/latest/google-cloud-sdk"
            if [[ -f $gcloud_sdk/path.bash.inc ]]
            then
                source "$gcloud_sdk/path.bash.inc"
            fi
            if [[ -f $gcloud_sdk/completion.bash.inc ]]
            then
                source "$gcloud_sdk/completion.bash.inc"
            fi
        fi

        # Completion for brewed binaries
        local completion_file="$brew_prefix/etc/profile.d/bash_completion.sh"
        if [[ -f $completion_file ]]
        then
            source "$completion_file"
        fi
    fi
}

set_red_if_failed()
{
    local exit_code=$?
    local should_print_code=$1

    local bright_red='\001\e[91m\002'

    if ((exit_code != 0))
    then
        printf '%b' "$bright_red"
    fi

    if ((should_print_code == 1))
    then
        printf '%03u' "$exit_code"
    fi
}

put_lf_unless_cursor_at_start() {
    local newline='\001\n\002'

    local _ cursor_position_x
    IFS='[;' read -p $'\001\e[6n\002' -d R -rs _ _ cursor_position_x _

    if ((cursor_position_x != 1))
    then
        printf '%b' "$newline"
    fi
}

setup_prompt()
{
    local clear_format='\[\e[m\]'
    local bright_green='\[\e[92m\]'
    local dark_cyan='\[\e[36m\]'
    local dark_magenta='\[\e[35m\]'
    local dark_yellow='\[\e[33m\]'
    local bright_cyan='\[\e[96m\]'
    local bright_magenta='\[\e[95m\]'
    local bright_yellow='\[\e[93m\]'
    local dark_blue='\[\e[34m\]'

    local exit_code="$bright_green"'$(set_red_if_failed 1)'

    local year="$dark_cyan"'\D{%Y}'
    local month="$dark_magenta"'\D{%m}'
    local day_of_month="$dark_yellow"'\D{%d}'
    local hour="$bright_cyan"'\D{%H}'
    local minute="$bright_magenta"'\D{%M}'
    local second="$bright_yellow"'\D{%S}'
    local timezone="$dark_blue"'\D{%z}'
    local long_timestamp="$year$month$day_of_month$hour$minute$second$timezone"
    local short_timestamp="$hour$minute"

    local situation='\u@\h \w'
    local euid_indicator='\$'
    local coloured_euid_indicator="$bright_green"'$(set_red_if_failed 0)\$'"$clear_format"

    local common_prompt="$clear_format"'$(put_lf_unless_cursor_at_start)'

    readonly PROMPT_LEGROOM=10

    readonly LONG_COMMON_PROMPT="$common_prompt$exit_code $long_timestamp$clear_format"
    readonly SHORT_COMMON_PROMPT="$common_prompt$exit_code $short_timestamp$clear_format"
    readonly SHORTEST_COMMON_PROMPT="$common_prompt"

    readonly LONG_PROMPT="$LONG_COMMON_PROMPT $situation $euid_indicator "
    readonly SHORT_PROMPT="$SHORT_COMMON_PROMPT $euid_indicator "
    readonly SHORTEST_PROMPT="$SHORTEST_COMMON_PROMPT$coloured_euid_indicator "
}

set_prompt()
{
    local max_prompt_length=$((COLUMNS - PROMPT_LEGROOM))
    local long_prompt=$LONG_PROMPT
    local short_prompt=$SHORT_PROMPT
    local shortest_prompt=$SHORTEST_PROMPT

    # For `git-sh`. Set `ADD_ON_PS1` in `~/.gitshrc`.
    if [[ -n $ADD_ON_PS1 ]]
    then
        long_prompt="$LONG_COMMON_PROMPT $ADD_ON_PS1"
        short_prompt="$SHORT_COMMON_PROMPT $ADD_ON_PS1"
        shortest_prompt="$SHORTEST_COMMON_PROMPT$ADD_ON_PS1"
    fi

    local expanded_long_prompt=${long_prompt@P}
    discolour_enclosed_ansi expanded_long_prompt

    if ((${#expanded_long_prompt} <= max_prompt_length))
    then
        PS1=$long_prompt
    else
        local expanded_short_prompt=${short_prompt@P}
        discolour_enclosed_ansi expanded_short_prompt

        if ((${#expanded_short_prompt} <= max_prompt_length))
        then
            PS1=$short_prompt
        else
            PS1=$shortest_prompt
        fi
    fi
}

main()
{
    if [[ -n $BASHRC_MAIN_SOURCED ]]
    then
        return 0
    fi

    readonly BASHRC_MAIN_SOURCED=1

    export \
        ANDROID_HOME \
        CLASSPATH \
        DOCKER_HOST \
        DOTNET_CLI_TELEMETRY_OPTOUT \
        DYLD_LIBRARY_PATH \
        EDITOR \
        GH_HOST \
        HOMEBREW_BAT \
        HOMEBREW_NO_ANALYTICS \
        HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK \
        HOMEBREW_NO_INSECURE_REDIRECT \
        JAVA_HOME \
        MANPATH \
        MAN_POSIXLY_CORRECT \
        MERGE \
        MYPYPATH \
        MYPY_CACHE_DIR \
        NEXUS_PASSWORD \
        NEXUS_URL \
        NEXUS_USERNAME \
        NPM_PACKAGES \
        ORACLE_HOME \
        PERL5LIB \
        PERLBREW_CPAN_MIRROR \
        PERLCRITIC \
        PERL_CPANM_OPT \
        PERL_LOCAL_LIB_ROOT \
        PERL_MB_OPT \
        PERL_MM_OPT \
        PGSSLMODE \
        PKG_CONFIG_PATH \
        POWERSHELL_TELEMETRY_OPTOUT \
        PYENV_ROOT \
        RIPGREP_CONFIG_PATH \
        RLWRAP_EDITOR \
        RLWRAP_HOME \
        SDKMAN_DIR \
        SRC_DISABLE_USER_AGENT_TELEMETRY \
        SRC_ENDPOINT \
    ;

    if [[ $OSTYPE == *darwin* && $UID == 0 ]]
    then
        # Clear out `$PATH` before sourcing `/etc/profile` for root.
        #
        # This is necessary because `sudo -i` on macOS doesn't blank out `$PATH`;
        # it passes it unchanged from the sudo'ing user to root.
        #
        # shellcheck disable=SC2123
        PATH=''
    fi

    # Source global definitions
    local global_profile='/etc/profile'
    # `$PROFILEREAD` is openSUSE-specific at the time of writing.
    if [[ -z $PROFILEREAD && -f $global_profile ]]
    then
        source "$global_profile"
    fi

    mesg n || :

    if [[ $OSTYPE == *linux* ]]
    then
        PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
    fi

    local brew_prefix=$(command -v brew &>/dev/null && brew --prefix)

    # Ensure `source`s below this see the correct `$MANPATH`.
    local manpath=$MANPATH
    unset MANPATH
    export MANPATH
    MANPATH="$manpath:$(manpath)"

    # Text editors
    EDITOR='vim'
    MERGE='vimdiff'

    # Telemetry
    DOTNET_CLI_TELEMETRY_OPTOUT=1
    HOMEBREW_NO_ANALYTICS=1
    POWERSHELL_TELEMETRY_OPTOUT=1
    SRC_DISABLE_USER_AGENT_TELEMETRY=1

    # History configuration
    shopt -s histappend
    unset HISTTIMEFORMAT
    HISTCONTROL='ignoreboth'
    HISTFILESIZE=''
    HISTSIZE=''
    if [[ $PROMPT_COMMAND != *history* ]]
    then
        local prompt_command="history -a; history -n; set_prompt; $PROMPT_COMMAND"
        PROMPT_COMMAND=${prompt_command//__vte_prompt_command}
    fi

    # Brew Prevent Time-Consuming Activities
    HOMEBREW_NO_BOTTLE_SOURCE_FALLBACK=1

    # Secure Brew
    HOMEBREW_NO_INSECURE_REDIRECT=1

    # Syntax-highlighted Brew Output
    HOMEBREW_BAT=1

    # RLWrap
    RLWRAP_EDITOR="vim '+call cursor(%L,%C)'"
    RLWRAP_HOME="$HOME/.rlwrap"

    # ripgrep
    RIPGREP_CONFIG_PATH="$HOME/.ripgreprc"

    # Oracle Database
    if [[ $OSTYPE == *darwin* ]]
    then
        local instantclient="$(brew --prefix)/Cellar/instantclient-basic"

        # shellcheck disable=2012
        ORACLE_HOME="$instantclient/$(ls -vr "$instantclient" | head -1)/"
    fi

    # PostgreSQL
    PGSSLMODE='verify-full'

    # SDKMAN!
    SDKMAN_DIR="$HOME/.sdkman/"

    # Android
    ANDROID_HOME="$HOME/Android/Sdk/"

    # NPM
    NPM_PACKAGES="$HOME/.npm/packages/"

    # Python
    MYPYPATH="$HOME/.mypy_stubs/"
    MYPY_CACHE_DIR="$HOME/.mypy_cache/"
    PYENV_ROOT="$HOME/.pyenv/"

    # Perl
    PERL5LIB="$HOME/perl5/lib/perl5:$PERL5LIB"
    PERLBREW_CPAN_MIRROR='https://www.cpan.org/'
    PERLCRITIC="$HOME/.perlcriticrc"
    PERL_CPANM_OPT='--from https://www.cpan.org/ --verify'
    PERL_LOCAL_LIB_ROOT="$HOME/perl5:$PERL_LOCAL_LIB_ROOT"
    PERL_MB_OPT="--install_base '$HOME/perl5'"
    PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"

    # Podman
    if command -v podman &>/dev/null && [[ -n $XDG_RUNTIME_DIR ]]
    then
        DOCKER_HOST="unix://$XDG_RUNTIME_DIR/podman/podman.sock"
    elif command -v docker &>/dev/null && [[ $OSTYPE == *darwin* ]]
    then
        DOCKER_HOST="unix://$HOME/.docker/run/docker.sock"
    fi

    # No `man` Prompts on Namesake Pages
    MAN_POSIXLY_CORRECT=1

    alias chomp='perl -pi -E "chomp if eof"'
    alias cpan-outdated='cpan-outdated --mirror="$PERLBREW_CPAN_MIRROR"'
    alias git-sh='exec git-sh'
    alias grep='grep --color=auto'
    alias grepp='grep -P'
    alias l.='ls -d .*'
    alias l='ls -CF'
    alias la='ls -A'
    alias ll='ls -alF'
    # shellcheck disable=SC2262
    alias ls='ls --color=auto'
    alias mosh='exec mosh'
    alias ncdu='ncdu --color dark'
    alias podchecker='podchecker -warnings -warnings -warnings'
    alias ssh-copy-id='ssh-copy-id -oPasswordAuthentication=yes'
    alias ssh='exec ssh'
    alias telnet='exec telnet'
    alias tohex="hexdump -ve '1/1 \"%.2x\" '"
    alias tree='tree -I ".git|.terraform|node_modules"'
    # shellcheck disable=SC2154
    alias unchomp='sed -i -e \$a\\ '

    add_brewed_items_to_env
    unset -f add_brewed_items_to_env

    setup_prompt
    unset -f setup_prompt
    set_prompt

    if ((UID != 0))
    then
        # arkade
        PATH="$HOME/.arkade/bin:$PATH"

        # krew
        PATH="$HOME/.krew/bin:$PATH"

        # pyenv
        if [[ -d $PYENV_ROOT ]]
        then
            source <(pyenv init -)
        fi

        # Perlbrew
        local perlbrew_bashrc="$HOME/perl5/perlbrew/etc/bashrc"
        if [[ -f $perlbrew_bashrc ]]
        then
            source "$perlbrew_bashrc"
        fi

        # Perl local::lib
        PATH="$HOME/perl5/bin:$PATH"
        MANPATH="$HOME/perl5/man:$MANPATH"

        # Cargo
        PATH="$HOME/.cargo/bin:$PATH"

        # Go
        PATH="$HOME/go/bin:$PATH"

        # Composer
        PATH="$HOME/.composer/vendor/bin:$PATH"

        # NPM
        #npm config set prefix "$NPM_PACKAGES"
        PATH="$NPM_PACKAGES/bin:$PATH"

        # SDKMAN!
        local sdkman_init="$SDKMAN_DIR/bin/sdkman-init.sh"
        if [[ -f $sdkman_init ]]
        then
            source "$sdkman_init"
        fi

        # Ruby
        local ruby_gems="$HOME/.local/share/gem/ruby"
        if [[ -n $(ls "$ruby_gems" 2>/dev/null) ]]
        then
            # shellcheck disable=2012
            PATH="$ruby_gems/$(ls -vr "$ruby_gems" | head -1)/bin:$PATH"
        fi

        # .NET
        PATH="$HOME/.dotnet/tools:$PATH"

        # Android
        PATH="$HOME/Android/Sdk/platform-tools:$PATH"

        # User-installed tools
        CLASSPATH="$HOME/jar:$HOME/.local/jar:$CLASSPATH"
        if [[ $OSTYPE == *darwin* ]]
        then
            DYLD_LIBRARY_PATH="$HOME/lib:$HOME/.local/lib:$DYLD_LIBRARY_PATH"
        fi
        MANPATH="$HOME/man:$HOME/.local/share/man:$MANPATH"
        PATH="$HOME/bin:$HOME/.local/bin:$PATH"
        PERL5LIB="$HOME/lib/perl5:$HOME/.local/lib/perl5:$PERL5LIB"
    fi

    # Colours for `tree`
    source <(dircolors -b)

    sanitize_path CLASSPATH
    sanitize_path DYLD_LIBRARY_PATH
    sanitize_path MANPATH
    sanitize_path PATH
    sanitize_path PERL5LIB
    sanitize_path PERL_LOCAL_LIB_ROOT
    sanitize_path PKG_CONFIG_PATH

    return 0
}

# Invoke `main` & cleanup
main
unset -f main
