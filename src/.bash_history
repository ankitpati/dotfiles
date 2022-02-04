#!/usr/bin/env bash
( GIT_COMMITTER_EMAIL='contact@ankitpati.in' git rebase branch-name --exec 'git commit --amend --author="Ankit Pati <contact@ankitpati.in>" --no-edit' )
( LESS='-I' git log )
( perforce_dir=//depot/directory; p4 dirs "$perforce_dir/*"; p4 sizes -sh "$perforce_dir/..." )
( ssh_private_key_file=id_ed25519; ssh-keygen -l -v -f "$ssh_private_key_file" && ssh-keygen -y -f "$ssh_private_key_file" && cat "$ssh_private_key_file" )
( unalias -a; comm -12 <(hash -r; ls {,/usr}/{,s}bin/ | xargs command -V 2>/dev/null | grep -Ev " is ($(brew --prefix)/|a shell (builtin|keyword))" | cut -d' ' -f1 | sort -u) <(ls "$(brew --prefix)/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/" | rev | cut -d. -f2- | rev | sort -u) )
/bin/ls -l@
/usr/libexec/java_home
/usr/libexec/java_home -V
/usr/libexec/java_home -v 1.8
ack '(?<=^B: ).*$'
adb logcat --pid="$(adb shell pidof -s in.ankitpati.gparse | cut -d' ' -f1)"
adb logcat -c && adb logcat > current.log
adb shell pm grant com.oasisfeng.island android.permission.GET_APP_OPS_STATS
adb shell pm list packages
adb uninstall com.markany.aegis.gt
advzip --recompress -4 --iter 1000 filename.zip
age --decrypt -i ~/.age/key.txt -o plain.txt cipher.txt.age
age -R ~/.age/machine.recipient -o cipher.txt.age plain.txt
age-keygen -o ~/.age/key.txt
aria2c -c -x 16 'https://ankitpati.in/filename.br'
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
bind -P
brew --prefix
brew analytics off
brew autoremove -n
brew developer --verbose state
brew doctor
brew help --prefix
brew help developer
brew install ack
brew install advancecomp
brew install age
brew install ant
brew install aria2
brew install arp-scan
brew install arping
brew install astyle
brew install atlas
brew install automake
brew install awscli
brew install base64
brew install basex
brew install bash
brew install bash-completion@2
brew install bash_unit
brew install bat
brew install bc
brew install binutils
brew install bison
brew install black
brew install byacc
brew install bzip2
brew install certigo
brew install checkbashisms
brew install checkstyle
brew install chrome-cli
brew install chrome-export
brew install chromedriver
brew install chromium
brew install clang-format
brew install cmake
brew install coreutils
brew install cpanminus
brew install cscope
brew install csvprintf
brew install curl
brew install dash
brew install datree
brew install ddrescue
brew install devspace
brew install diffoscope
brew install diffstat
brew install diffutils
brew install dnstracer
brew install docker-completion
brew install dos2unix
brew install doxygen
brew install driftctl
brew install dyld-headers
brew install dylibbundler
brew install ed
brew install eksctl
brew install eslint
brew install expect
brew install file-formula
brew install findutils
brew install firebase-cli
brew install fits
brew install flake8
brew install flex
brew install forcecli
brew install fselect
brew install gawk
brew install gcc
brew install git
brew install git-delta
brew install git-lfs
brew install git-sizer
brew install gitg
brew install gitleaks
brew install gnu-getopt
brew install gnu-indent
brew install gnu-sed
brew install gnu-tar
brew install gnu-time
brew install gnu-units
brew install gnu-which
brew install gnupg
brew install go
brew install google-cloud-sdk
brew install google-java-format
brew install gosec
brew install gpatch
brew install gperf
brew install graphviz
brew install grc
brew install grep
brew install groff
brew install grpc
brew install gzip
brew install helm
brew install hping
brew install htop
brew install http-prompt
brew install httpd
brew install httrack
brew install inetutils
brew install iproute2mac
brew install ipv6calc
brew install iredis
brew install irssi
brew install istioctl
brew install iterm2
brew install ivy
brew install jq
brew install jsonlint
brew install k6
brew install k9s
brew install kotlin
brew install ksh
brew install kubergrunt
brew install lastpass-cli
brew install less
brew install libressl
brew install libtermkey
brew install libvterm
brew install lsof
brew install lsusb
brew install lz4
brew install lzip
brew install m4
brew install maccy
brew install make
brew install man-db
brew install mandoc
brew install marp-cli
brew install masscan
brew install mat2
brew install maven
brew install maven-completion
brew install mdcat
brew install mg
brew install minikube
brew install minio-mc
brew install moreutils
brew install mosh
brew install mscgen
brew install mypy
brew install nano
brew install ncdu
brew install neofetch
brew install netcat
brew install nmap
brew install ocrmypdf
brew install openssh
brew install oq
brew install p4
brew install p4v
brew install php
brew install pip-completion
brew install prettier
brew install proctools
brew install proguard
brew install pwgen
brew install pyright
brew install qemu
brew install rakudo
brew install reorder-python-imports
brew install ripgrep-all
brew install rlwrap
brew install rmlint
brew install rpcgen
brew install rsync
brew install rust
brew install rustc-completion
brew install scorecard
brew install screen
brew install semgrep
brew install sha3sum
brew install shellcheck
brew install shellharden
brew install shfmt
brew install sloccount
brew install socat
brew install speedtest-cli
brew install sqlfluff
brew install ssdeep
brew install ssh-copy-id
brew install sslscan
brew install swift
brew install tcpdump
brew install tcpreplay
brew install tcptrace
brew install tcptraceroute
brew install tcsh
brew install tealdeer
brew install terraform
brew install terraform-rover
brew install terraform_landscape
brew install terraformer
brew install terraforming
brew install terrascan
brew install tflint
brew install tfmigrate
brew install tfsec
brew install tfupdate
brew install tika
brew install timg
brew install tmux
brew install tree
brew install ugrep
brew install uncrustify
brew install unifdef
brew install universal-ctags
brew install unzip
brew install util-linux
brew install vim
brew install vscodium
brew install watch
brew install watchexec
brew install wget
brew install whois
brew install with-readline
brew install yamllint
brew install yq
brew install zip
brew install zlib
brew install zsh
brew services info --all
brew shellenv
brew uninstall --zap lesspipe
brew uninstall --zap quip
brew-list-deps
brotli -d filename.br
brotli filename
browserslist 'last 1 Chrome versions'
cargo install cargo-update
cargo install shellharden
chmod 644 ~/.p4trust
chsh -s "$(brew --prefix)/bin/bash"
codium --install-extension ankitpati.vscodium-amoled --force
codium --install-extension eamodio.gitlens --force
codium --install-extension jock.svg --force
codium --install-extension redhat.java --force
codium --install-extension vscjava.vscode-java-debug --force
codium --install-extension vscodevim.vim --force
codium --list-extensions
command -V command
command -v gnome-shell
convert ./*.jpg output.pdf
copyq info
cpan-outdated -p | xargs cpanm; echo $?; pip list --outdated --format=freeze | cut -d= -f1 | grep -Ev '^(GDAL|python-poppler-qt5|slip|wxPython)$' | xargs pip install --user -U; echo $?; mypy --install-types; echo $?; cargo install-update -a; echo $?; npm update -g; echo $?; sdk selfupdate; echo $?; sdk update; echo $?; for java_sdk in $(grep '^sdk install ' ~/.bash_history | cut -d' ' -f3 | sort -u); do sdk upgrade "$java_sdk"; done; find ~/.sdkman/ -type f \( -name '*.exe' -o -name '*.bat' \) -delete; vim +PlugUpgrade +PlugUpdate +qa; nvim +PlugUpgrade +PlugUpdate +qa; for codext in $(codium --list-extensions); do codium --install-extension "$codext" --force; done; echo $?; flutter upgrade; echo $?; flutter doctor -v; echo $?; gcloud components update; echo $?; tldr --update; echo $?
cpanm App::cpanoutdated
cpanm Data::Printer
cpanm Future::AsyncAwait
cpanm GraphViz2::Parse::ISA
cpanm IO::Socket::SSL
cpanm IPC::Run
cpanm IPC::Shareable
cpanm Imager::File::PNG
cpanm Minion
cpanm Module::Signature
cpanm Mojolicious
cpanm Neovim::Ext
cpanm Net::DNS::Native
cpanm PDF::Create
cpanm Parallel::ForkManager
cpanm Selenium::Remote::Driver
cpanm Sereal
cpanm Sys::Virt
cpanm Test::Class::Moose
cpanm TryCatch
cpanm URL::Encode
cpanm WWW::Form::UrlEncoded
cpanm WWW::Mechanize::Chrome
cpanm XML::Bare
cpanm XML::Parser
cpanm XML::SAX::Expat
crontab -e
curl 'https://example.org/untrustworthy.dat'; exec cat
curl 'https://ident.me'; echo; exec cat
curl https://github.com/web-flow.gpg | gpg --import
dart --disable-analytics
date +%F
date +%s
date -d@1619533275
dconf dump / > dump.dconf
dd if=/dev/urandom count=1 2>/dev/null | git hash-object --stdin
deactivate
declare -p | grep '^declare -- '
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false
df -h
df -i
diff HEAD~1 --name-only
difftool branchname -- filename
dig -t ANY google.com
dig -x 172.30.83.9
dig -x ankitpati.in
dig ankitpati.in
dirs -v
dnf config-manager --add-repo 'https://brave-browser-rpm-release.s3.brave.com/x86_64/'
dnf copr enable kwizart/fedy
dnf copr enable zeno/scrcpy
dnf groupupdate core
dnf groupupdate multimedia
dnf groupupdate sound-and-video
dnf install @virtualization
dnf install FlightGear
dnf install HandBrake-gui
dnf install LabPlot
dnf install NetworkManager-\*-gnome
dnf install NetworkManager-fortisslvpn
dnf install SDL2
dnf install SDL2-devel
dnf install ShellCheck
dnf install \*-firmware
dnf install abiword
dnf install abootimg
dnf install ack
dnf install advancecomp
dnf install aegisub
dnf install aircrack-ng
dnf install aireplay-ng
dnf install android-tools
dnf install ant
dnf install apache-ivy
dnf install apostrophe
dnf install ardour5
dnf install arduino
dnf install aria2
dnf install asciinema
dnf install astyle
dnf install audacity
dnf install b43-tools
dnf install banner
dnf install bash-completion
dnf install bat
dnf install below
dnf install binwalk
dnf install bison
dnf install black
dnf install bleachbit
dnf install blender
dnf install bless
dnf install bless-doc
dnf install brave-browser
dnf install brave-keyring
dnf install broadcom-bt-firmware
dnf install broadcom-wl
dnf install brotli
dnf install byacc
dnf install bzip2-devel
dnf install bzip2-libs.i686
dnf install calibre
dnf install calligra
dnf install calligraplan
dnf install cargo
dnf install celestia
dnf install certbot
dnf install cheat
dnf install cheese
dnf install chromedriver
dnf install chromium
dnf install codium
dnf install conda
dnf install copyq
dnf install cscope
dnf install cura
dnf install curlpp
dnf install curlpp-devel
dnf install cvs
dnf install d-feet
dnf install darktable
dnf install darktable-tools-noise
dnf install dconf-editor
dnf install ddd
dnf install deja-dup
dnf install deja-dup-nautilus
dnf install dia
dnf install dialect
dnf install digikam
dnf install dnf-plugin-system-upgrade
dnf install dnf-utils
dnf install dolphin
dnf install dotnet
dnf install drawing
dnf install easytag
dnf install easytag-nautilus
dnf install emacs-nox
dnf install entangle
dnf install epiphany
dnf install espeak
dnf install etherape
dnf install ettercap
dnf install exa
dnf install expat-devel
dnf install falkon
dnf install fd-find
dnf install fdupes
dnf install fedy
dnf install ffms2-devel
dnf install figlet
dnf install fish
dnf install flac
dnf install flameshot
dnf install flex
dnf install flowblade
dnf install fmpp
dnf install foliate
dnf install fonts-tweak-tool
dnf install foot
dnf install fragments
dnf install freecad
dnf install freetiger
dnf install freeze
dnf install fritzing
dnf install fuse-sshfs
dnf install gaupol
dnf install gcc-c++
dnf install gdal
dnf install gdal-\*
dnf install gdalcpp-devel
dnf install geany
dnf install geany-plugins
dnf install geany-plugins-addons
dnf install geany-plugins-codenav
dnf install geany-plugins-debugger
dnf install geany-plugins-geanydoc
dnf install geany-plugins-geanygendoc
dnf install geany-plugins-geanypg
dnf install geany-plugins-geanyvc
dnf install geany-plugins-git-changebar
dnf install geany-plugins-latex
dnf install geany-plugins-markdown
dnf install geany-plugins-overview
dnf install geany-plugins-pretty-printer
dnf install geany-plugins-scope
dnf install geany-plugins-spellcheck
dnf install geany-plugins-vimode
dnf install geany-plugins-xmlsnippets
dnf install ghdl
dnf install gif2png
dnf install gifsicle
dnf install gimagereader-gtk
dnf install gimp
dnf install git
dnf install git-delta
dnf install git-lfs
dnf install gitg
dnf install gitk
dnf install glabels
dnf install glade
dnf install glade3
dnf install glib2-devel
dnf install glmark2
dnf install gnome-builder
dnf install gnome-chess
dnf install gnome-extensions-app
dnf install gnome-feeds
dnf install gnome-firmware
dnf install gnome-latex
dnf install gnome-music
dnf install gnome-network-displays
dnf install gnome-sharp
dnf install gnome-shell-extension-gpaste
dnf install gnome-shell-extension-gsconnect
dnf install gnome-sound-recorder
dnf install gnome-subtitles
dnf install gnome-tweaks
dnf install gns3-gui
dnf install gns3-server
dnf install gnucobol
dnf install gnumeric
dnf install go-avif
dnf install golang
dnf install goldendict
dnf install google-chrome-stable
dnf install gparted
dnf install gpick
dnf install gpscorrelate
dnf install graphviz
dnf install graphviz-\*
dnf install groff
dnf install groovy
dnf install gscan2pdf
dnf install gspiceui
dnf install gstreamer
dnf install gstreamer-plugins-espeak
dnf install gstreamer1
dnf install gstreamer1-libav
dnf install gstreamer1-plugin-openh264
dnf install gstreamer1-plugins-bad-free
dnf install gstreamer1-plugins-bad-free-extras
dnf install gstreamer1-plugins-bad-free-fluidsynth
dnf install gstreamer1-plugins-bad-free-wildmidi
dnf install gstreamer1-plugins-bad-freeworld
dnf install gstreamer1-plugins-base-tools
dnf install gstreamer1-plugins-entrans
dnf install gstreamer1-plugins-good
dnf install gstreamer1-plugins-good-extras
dnf install gstreamer1-plugins-good-gtk
dnf install gstreamer1-plugins-good-qt
dnf install gstreamer1-plugins-ugly
dnf install gstreamer1-plugins-ugly-free
dnf install gthumb
dnf install gtk3-devel
dnf install gtk4-devel
dnf install gtypist
dnf install guvcview
dnf install gwenview
dnf install gydl
dnf install harvey
dnf install hashcat
dnf install hdparm
dnf install heaptrack
dnf install heimdall
dnf install heimdall-frontend
dnf install hercules
dnf install htop
dnf install httpie
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-32.noarch.rpm
dnf install https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-32.noarch.rpm
dnf install httrack
dnf install hugin
dnf install ibus-uniemoji
dnf install igt-gpu-tools
dnf install impallari-raleway-fonts
dnf install indent
dnf install inkscape
dnf install ioport
dnf install ipe
dnf install irssi
dnf install java-devel
dnf install java-latest-openjdk-devel
dnf install jq
dnf install kate
dnf install kdenlive
dnf install kdiagram
dnf install kexi
dnf install kile
dnf install kitty
dnf install klavaro
dnf install kmod-nvidia
dnf install kmod-wl
dnf install kolourpaint
dnf install konqueror
dnf install konsole
dnf install krb5-devel
dnf install krename
dnf install krita
dnf install krop
dnf install kruler
dnf install ktouch
dnf install ldns-utils
dnf install lensfun
dnf install libaom
dnf install libaom-devel
dnf install libcurl-devel
dnf install libdvdcss
dnf install libffi-devel
dnf install libimobiledevice
dnf install libimobiledevice-devel
dnf install libimobiledevice-utils
dnf install librecad
dnf install libreoffice-draw
dnf install librsvg2-devel
dnf install librsvg2-tools
dnf install librsync-devel
dnf install libstdc++-docs
dnf install libusb-devel
dnf install libusbx-devel
dnf install libva-utils
dnf install libva-vdpau-driver
dnf install libvirt
dnf install libvirt-devel
dnf install linode-cli
dnf install litecli
dnf install lldb
dnf install llvm-devel
dnf install lm_sensors
dnf install lshw
dnf install lua-devel
dnf install luarocks
dnf install lxc
dnf install lxc-templates
dnf install lyx
dnf install man-pages
dnf install mapnik-utils
dnf install mariadb
dnf install marker
dnf install masscan
dnf install mathjax
dnf install maven
dnf install maxima
dnf install meld
dnf install mesa-libGLU
dnf install mesa-libGLU-devel
dnf install meson
dnf install metasploit-framework
dnf install mkvtoolnix-gui
dnf install moreutils
dnf install mosh
dnf install mpv
dnf install mtpaint
dnf install mypaint
dnf install nasm
dnf install nautilus-gsconnect
dnf install nautilus-image-converter
dnf install ncdu
dnf install ncurses-libs.i686
dnf install neofetch
dnf install neovim
dnf install neovim-qt
dnf install ngspice
dnf install nmap
dnf install nodejs-svgo
dnf install npm
dnf install oathtool
dnf install obs-studio
dnf install ocrmypdf
dnf install octave
dnf install okteta
dnf install okular
dnf install olive
dnf install openconnect
dnf install openfst
dnf install openfst-devel
dnf install openfst-tools
dnf install openscad
dnf install openshot
dnf install openssl-devel
dnf install optipng
dnf install p7zip
dnf install pandoc
dnf install parallel
dnf install pass
dnf install patchutils
dnf install pavucontrol
dnf install pavumeter
dnf install pdf2svg
dnf install pdfarranger
dnf install pdfbox
dnf install pdfcrack
dnf install pdfmod
dnf install pdfposter
dnf install pdfresurrect
dnf install pdfshuffler
dnf install peek
dnf install perl-App-cpanminus
dnf install perl-Sereal
dnf install perl-Task-Kensho
dnf install perl-Task-Kensho-\*
dnf install perl-aliased
dnf install perl-hivex
dnf install perl-pod2pdf
dnf install perl-podlators
dnf install perl-podlinkcheck
dnf install perl\(Algorithm::Diff\)
dnf install perl\(App::Ack\)
dnf install perl\(Browser::Open\)
dnf install perl\(Carton\)
dnf install perl\(Cpanel::JSON::XS\)
dnf install perl\(Crypt::Random\)
dnf install perl\(DBI\)
dnf install perl\(Data::Printer\)
dnf install perl\(Deep::Copy\)
dnf install perl\(Devel::Cover\)
dnf install perl\(Devel::Cycle\)
dnf install perl\(Devel::NYTProf\)
dnf install perl\(EV\)
dnf install perl\(Filesys::Notify::Simple\)
dnf install perl\(Future::AsyncAwait\)
dnf install perl\(Future\)
dnf install perl\(Graph::Easy\)
dnf install perl\(GraphViz::XML\)
dnf install perl\(HTML::Parser\)
dnf install perl\(HTML::Selector::XPath\)
dnf install perl\(HTML::Tagset\)
dnf install perl\(HTML::Tree\)
dnf install perl\(IO::Socket::SSL\)
dnf install perl\(IO::Socket::Socks\)
dnf install perl\(IO::String\)
dnf install perl\(IPC::Cmd\)
dnf install perl\(IPC::Run3\)
dnf install perl\(IPC::Run\)
dnf install perl\(IPC::Shareable\)
dnf install perl\(Imager::File::PNG\)
dnf install perl\(Import::Into\)
dnf install perl\(JSON::XS\)
dnf install perl\(LWP::Protocol::https\)
dnf install perl\(List::AllUtils\)
dnf install perl\(List::MoreUtils::XS\)
dnf install perl\(List::MoreUtils\)
dnf install perl\(List::SomeUtils::XS\)
dnf install perl\(List::Util\)
dnf install perl\(MetaCPAN::Client\)
dnf install perl\(Modern::Perl\)
dnf install perl\(Module::Util\)
dnf install perl\(Mojolicious\)
dnf install perl\(Net::IDN::Encode\)
dnf install perl\(Net::IDN::Nameprep\)
dnf install perl\(Net::SSLeay\)
dnf install perl\(PDF::Create\)
dnf install perl\(Parallel::ForkManager\)
dnf install perl\(Perl::Critic\)
dnf install perl\(Perl::Tidy\)
dnf install perl\(Pod::Simple\)
dnf install perl\(Pod::Spell\)
dnf install perl\(Pod::Usage\)
dnf install perl\(Readonly\)
dnf install perl\(Redis\)
dnf install perl\(Regexp::Trie\)
dnf install perl\(Role::Tiny\)
dnf install perl\(SOAP::Lite\)
dnf install perl\(SQL::Translator\)
dnf install perl\(Sereal\)
dnf install perl\(String::ShellQuote\)
dnf install perl\(Sys::Virt\)
dnf install perl\(Term::ANSIColor\)
dnf install perl\(Term::ReadKey\)
dnf install perl\(Term::ReadLine::Gnu\)
dnf install perl\(Test::Base\)
dnf install perl\(Test::Class\)
dnf install perl\(Test::Differences\)
dnf install perl\(Test::Exception\)
dnf install perl\(Test::FailWarnings\)
dnf install perl\(Test::Fatal\)
dnf install perl\(Test::Identity\)
dnf install perl\(Test::MockModule\)
dnf install perl\(Test::MockObject\)
dnf install perl\(Test::Pod\)
dnf install perl\(Test::Simple\)
dnf install perl\(Test::Warn\)
dnf install perl\(Test::Warnings\)
dnf install perl\(Text::CSV\)
dnf install perl\(Text::Diff\)
dnf install perl\(TryCatch\)
dnf install perl\(URI::Escape::XS\)
dnf install perl\(WWW::Form::UrlEncoded\)
dnf install perl\(WWW::Mechanize\)
dnf install perl\(XML::Bare\)
dnf install perl\(XML::Parser\)
dnf install perl\(XML::SAX\)
dnf install perl\(XML::Writer\)
dnf install perl\(YAML::LibYAML\)
dnf install perl\(YAML\)
dnf install perl\(utf8::all\)
dnf install perlbrew
dnf install php
dnf install php-pear
dnf install php-pear-Auth-OpenID
dnf install php-pear-Console-CommandLine
dnf install php-pear-Console-Getargs
dnf install php-pear-Console-Table
dnf install php-pear-Crypt-Blowfish
dnf install php-pear-Date
dnf install php-pear-File-Find
dnf install php-pear-HTTP-OAuth
dnf install php-pear-HTTP-Request2
dnf install php-pear-Mail-Mime
dnf install php-pear-Net-Curl
dnf install php-pear-Net-DNS2
dnf install php-pear-Net-IDNA2
dnf install php-pear-Net-Socket
dnf install php-pear-Net-URL
dnf install php-pear-Net-URL2
dnf install php-pear-PHP-CodeSniffer
dnf install php-pear-XML-Parser
dnf install php-pear-XML-Serializer
dnf install php-pear-math-biginteger
dnf install php-pear-phing
dnf install pinta
dnf install pipx
dnf install pitivi
dnf install pl
dnf install plasma-nm
dnf install plasma-systemsettings
dnf install pngcrush
dnf install pngquant
dnf install podman
dnf install podman-docker
dnf install poppler-qt5-devel
dnf install postgresql
dnf install postgresql-server
dnf install postgresql-upgrade
dnf install postgresql-upgrade-devel
dnf install powerline-fonts
dnf install prettyping
dnf install procinfo
dnf install pspg
dnf install psutils
dnf install psutils-perl
dnf install pwgen
dnf install pylint
dnf install pypy
dnf install pypy-devel
dnf install pypy3
dnf install pypy3-devel
dnf install python-neovim
dnf install python3-autopep8
dnf install python3-basemap
dnf install python3-botocore
dnf install python3-celery
dnf install python3-dask+dataframe
dnf install python3-demjson
dnf install python3-flake8
dnf install python3-flask
dnf install python3-flower
dnf install python3-gdal
dnf install python3-graphviz
dnf install python3-grpcio
dnf install python3-libguestfs
dnf install python3-lxml
dnf install python3-mypy
dnf install python3-mypy_extensions
dnf install python3-networkx
dnf install python3-nltk
dnf install python3-notebook
dnf install python3-numpy
dnf install python3-oauthlib
dnf install python3-pandas
dnf install python3-pip
dnf install python3-psutil
dnf install python3-psycopg2
dnf install python3-pycodestyle
dnf install python3-pyflakes
dnf install python3-pygraphviz
dnf install python3-pylint
dnf install python3-pymongo
dnf install python3-requests
dnf install python3-s3transfer
dnf install python3-scikit-image
dnf install python3-scikit-learn
dnf install python3-scipy
dnf install python3-seaborn
dnf install python3-sqlparse
dnf install python3-statsmodels
dnf install python3-sympy
dnf install python3-urllib3
dnf install python3-yapf
dnf install qalculate
dnf install qalculate-gtk
dnf install qalculate-kde
dnf install qcad
dnf install qemu-kvm
dnf install qgis
dnf install qgis-grass
dnf install qpdf
dnf install quearcode
dnf install qwinff
dnf install rakudo
dnf install rakudo-zef
dnf install rawtherapee
dnf install rcs
dnf install readline-devel
dnf install recorder
dnf install redis
dnf install remmina
dnf install reptyr
dnf install retext
dnf install rhythmbox-alternative-toolbar
dnf install ripgrep
dnf install rlwrap
dnf install rpmconf
dnf install rpmfusion-free-release-tainted
dnf install rpmfusion-nonfree-release-tainted
dnf install rr
dnf install rust
dnf install samyak-devanagari-fonts
dnf install scilab
dnf install scrcpy
dnf install screen
dnf install screenruler
dnf install scribus
dnf install sdcv
dnf install seahorse
dnf install seahorse-nautilus
dnf install sendmail
dnf install sendmail-cf
dnf install sensible-utils
dnf install shotcut
dnf install shotwell
dnf install simplescreenrecorder
dnf install ski
dnf install slic3r
dnf install sloccount
dnf install snapd
dnf install socat
dnf install sqlite-devel
dnf install sscg
dnf install ssdeep
dnf install stardict
dnf install stardict-dic-hi
dnf install stellarium
dnf install stow
dnf install strace
dnf install subtitleeditor
dnf install sunflow
dnf install sushi
dnf install svg2svgt
dnf install swift-lang
dnf install synfigstudio
dnf install sysfsutils
dnf install telegram-desktop
dnf install terminator
dnf install testdisk
dnf install texlive
dnf install texlive-pdfcrop
dnf install texlive-pdfprivacy
dnf install the_silver_searcher
dnf install thunderbird
dnf install thunderbird-enigmail
dnf install tidy
dnf install tigervnc
dnf install tlp
dnf install tmate
dnf install tokei
dnf install toolbox
dnf install transmission
dnf install tweak
dnf install typespeed
dnf install umbrello
dnf install umlgraph
dnf install uncrustify
dnf install unique
dnf install units
dnf install unpaper
dnf install vala
dnf install valgrind
dnf install vdpauinfo
dnf install vim-enhanced
dnf install vlc
dnf install vlc-extras
dnf install vorbis-tools
dnf install vulkan
dnf install vulkan-tools
dnf install wdiff
dnf install wireshark
dnf install wxGlade
dnf install xautomation
dnf install xclip
dnf install xdelta
dnf install xdotool
dnf install xorg-x11-drv-nvidia-cuda
dnf install xorg-x11-drv-nvidia-cuda-libs
dnf install xorg-x11-drv-nvidia-devel
dnf install xorg-x11-drv-nvidia-libs
dnf install xournal
dnf install xournalpp
dnf install yasm
dnf install ydotool
dnf install youtube-dl
dnf install zbar
dnf install zlib.i686
dnf install zopfli
dnf install zsh
dnf needs-restarting
dnf remove \*-blivet
dnf remove abcli
dnf remove abrt
dnf remove awscli
dnf remove csstidy
dnf remove docker
dnf remove fedora-chromium-config
dnf remove fedora-user-agent-chrome
dnf remove gnome-abrt
dnf remove gnome-initial-setup
dnf remove gnome-shell-extension-apps-menu
dnf remove gnome-shell-extension-background-logo
dnf remove gnome-shell-extension-launch-new-instance
dnf remove gnome-shell-extension-places-menu
dnf remove gnome-shell-extension-unite
dnf remove kdump-anaconda-addon
dnf remove pam_krb5
dnf remove planner
dnf remove python3-sip
dnf remove qt-avif-image-plugin
dnf remove vidcutter
dnf remove virtualbox-guest-additions
dnf repolist all
echo "$LINES" "$COLUMNS"
echo 'Subject: Hello' | sendmail -v contact@ankitpati.in
ember build
ember build --environment=production
ember clean
ember generate component component-name
ember generate route route-name
ember generate template template-name
ember help generate
ember install ember-cli-eslint
ember lint
ember new my-app --lang en
ember run
ember serve
ember server
ember test
ember test --server
enca --list languages
enca filename
errno --list
eslint --fix filename.js
eslint filename.js
exa
exec su - ankitpati
exec sudo -i
exec sudo -u ankitpati -i
exiftool -p '$XResolution,$YResolution' filename.jpg
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
factor 1849
fallocate -l 100M hundred-MiB-file
fallocate -l 1K one-kb-file
fallocate -l 4M four-MiB-file
fastboot boot twrp.img
fastboot flash recovery twrp.img
fastboot oem get_unlock_data
fastboot oem unlock
fastboot reboot recovery
fc-cache -fv
fc-list
fcrackzip
fd path/to/file
fd path/to/file -p
fdupes -r .
fdupes -rN .
fdupes -rNd .
fdupes .
figlet Type your message here.
file -i filename
find . -not -group ankitpati
find . -not -user ankitpati
find . -type f -exec chmod 0600 {} + -exec dos2unix {} +
firewall-cmd --list-all
firewall-cmd --list-ports
firewall-cmd --list-services
firewall-cmd --state
flatpak install com.belmoussaoui.Obfuscate
flatpak install com.github.alexhuntley.Plots
flatpak install com.github.huluti.Curtail
flatpak install com.github.junrrein.PDFSlicer
flatpak install com.github.tchx84.Flatseal
flatpak install com.rafaelmardojai.WebfontKitGenerator
flatpak install fr.natron.Natron
flatpak install fr.romainvigier.MetadataCleaner
flatpak install io.github.mmstick.FontFinder
flatpak install org.gaphor.Gaphor
flatpak install org.gnome.gitlab.YaLTeR.Identity
flatpak install org.gnome.gitlab.YaLTeR.VideoTrimmer
flatpak install org.rafaelmardojai.WebfontKitGenerator
flatpak install org.signal.Signal
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak uninstall --unused
flatpak uninstall org.freedesktop.Platform.GL.nvidia-465-24-02
flutter config --no-analytics
flutter doctor -v
foremost
fpaste filename.txt
free -h
fuser -v 8080/tcp
fzf
gcc -march=native -Q --help=target | grep -E -- '-m(arch|tune)='
gcloud auth application-default login
gcloud auth list
gcloud auth login
gcloud compute zones list
gcloud compute zones list --project=project-id
gcloud config configurations list
gcloud config list
gcloud config set project project-id
gcloud config unset project
gcloud info
gcloud projects list
gcloud version
git add -p
git branch --format='%(refname:short)' | while read -r branch; do git checkout "$branch" || break; git rebase origin/main || break; done
git branch -vv
git checkout -p
git cherry-pick branchname~2..branchname
git commit --amend -S --no-edit
git config --show-origin credential.helper
git fetch origin pull/1000/HEAD:local-branch-name # for GitHub
git lfs install
git log --follow -- filename
git log --graph --pretty=fuller --show-signature
git log --pretty=email
git log --pretty=format:%ae | sort -u | cut -d@ -f2- | sort -u
git log -p
git merge --ff-only branchname
git merge-base HEAD branchname
git rebase branch-name --exec 'git commit --amend --author="Ankit Pati <contact@ankitpati.in>" --no-edit'
git restore filename
git show --format= --name-only
git show --show-signature
git show -U100
git submodule update
git submodule update --init
gjs-console
go get github.com/ericchiang/pup
go get png2svg
go-avif
gpg2 --armor --export contact@ankitpati.in | pbcopy
gpg2 --armor --export contact@ankitpati.in | xclip
gpg2 --armor --export-secret-keys contact@ankitpati.in > privkey.gpg.asc
gpg2 --decrypt data.gpg
gpg2 --decrypt data.gpg --output data
gpg2 --edit-key contact@ankitpati.in
gpg2 --encrypt --sign --recipient contact@ankitpati.in filename.br
gpg2 --export -a 'Ankit Pati' > pubkey.asc
gpg2 --export-secret-keys contact@ankitpati.in > privkey.gpg
gpg2 --fingerprint contact@ankitpati.in
gpg2 --full-generate-key
gpg2 --import filename.asc
gpg2 --keyid-format long --list-keys contact@ankitpati.in
gpg2 --list-keys --keyid-format long
gpg2 --list-secret-keys
gpg2 --locate-keys contact@ankitpati.in
gpg2 --recv-keys 'B8BB CEBC BD6C 4BF0 599C 40F9 360A 9642 9F7A 69DC'
gpg2 --verify filename-CHECKSUM && sha256sum -c filename-CHECKSUM
gpg2 --with-fingerprint filename.gpg
gpg2 -c --no-symkey-cache filename.br
gradle
gradle --stop
grep '^p4 sync ' ~/.bash_history | cut -d' ' -f3- | sort -u | while read -r p4dir; do p4 sync "$p4dir"; done
grep -E "^($(tail -n +2 brew-deps.csv | cut -d, -f1 | comm -23 - brew-install-list.txt | paste -sd'|'))" brew-deps.csv | grep -v ,
grep -Elr -- '^(<<<<<<< HEAD|=======|>>>>>>> [[:xdigit:]]+ .*)$' | sort -u | xargs -o vim
grep -l search-string -r . | xargs -o vim
gsettings set org.gnome.shell.app-switcher current-workspace-only true
guiscrcpy
guiscrcpy config -r
hash
hash -r
hash perl
hdparm --security-unlock SecretPassword /dev/sdb
hdparm --user-master m --security-disable SecretPassword /dev/sdb
hdparm --user-master m --security-unlock SecretPassword /dev/sdb
hdparm --user-master u --security-disable SecretPassword /dev/sdb
hdparm --user-master u --security-unlock SecretPassword /dev/sdb
hdparm -I /dev/sdb
hexdump -C filename.dat
hexdump -C ~/Applications/Chrome\ Apps.localized/Icon$'\r'/..namedfork/rsrc
hg clone 'https://foss.heptapod.net/pypy/pypy' pypy
hostname -I
hostnamectl set-hostname boronHostname
html-beautify -f filename.html
http 'https://ankitpati.in/filename.txt'; exec cat
http_this --port 7009
hunspell -l
hwloc-ls
i2cdetect -l
id -u
identify -format '%x,%y\n' filename.png
ideviceinfo
idevicepair
inxi
ip a
ip a show enp0s20u3
ip addr
ip route
ipcrm shm 262162
ipcs -l
ipcs -m
ipcs -s
iw dev wlp2s0
iw dev wlp2s0 info
iwconfig
jamf enroll -prompt
jamf manage
jamf policy
jamf recon
journalctl
journalctl -f -o cat "$(which gnome-shell)"
jq -S --indent 4 . < filename.json
jq . < filename.json
js-beautify filename.js
jsonlint filename.json
jsonlint-php filename.json
jupyter notebook password
jupyter serverextension enable --py jupyterlab
kate-syntax-highlighter --list-themes
kate-syntax-highlighter -t 'Vim Dark' filename.pl > filename.html
keytool -printcert -file cert.pem
latest-version asar
latest-version spectron
launchctl list
launchctl load /System/Library/LaunchDaemons/ssh.plist
launchctl unload /System/Library/LaunchDaemons/ssh.plist
limitcpu
ln -s "$(brew --prefix)/opt/openssl@1.1/" "$(brew --prefix)/opt/openssl"
ln -sfn "$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk.jdk
locate --statistics
loginctl list-sessions
loginctl show-session
loginctl show-session 2 -p Type
lpass --help
lpass edit --password unique_name
lpass login contact@ankitpati.in
lpass ls
lpass show --field='Public Key' unique_name
lpass show --password perforce | p4 login
lpass show --password unique_name
lpass show --username unique_name
lpass show unique_name
ls "$(brew --prefix)/bin/g"* | rev | cut -d/ -f1 | rev | cut -dg -f2- | xargs -r which 2>/dev/null | grep -v "^$(brew --prefix)/" | rev | cut -d/ -f1 | rev | while read -r binary; do echo "$(brew --prefix)/bin/g$binary"; done | xargs -r ls -l | rev | cut -d/ -f4 | rev | sort -u
ls /Library/Launch{Agents,Daemons}
ls ~/Library/Application\ Support/VSCodium/User/settings.json
lsattr filename
lsblk
lscpu
lsdev
lshw
lsmod
lsof -PiTCP -sTCP:LISTEN
lspci
lstopo
lsusb
luarocks completion bash
luarocks install --local dump
luarocks path
luarocks show dump
markdownlint '**/*.md' 2> errors.txt
mdfind -name '.csv'
mdfind -name 'log4j' | ack -i '(?<!\.)2\..*\.jar$'
meson x --buildtype release --strip -Db_lto=true
modinfo -F version nvidia
mogrify -format jpg ./*.png
mojo version
msfconsole
msfdb stop
mvn --encrypt-master-password 'maven-master-password'
mvn --encrypt-password 'maven-server-password'
namei -om /bin/perl6
nc -lp 5432
ncdu
neofetch
ng new my-app
ng serve -o
nmap --privileged -sS --send-eth -Pn -n 10.10.10.0/24 -p 22
nmap -n -sn 10.10.10.0/24
nmcli connection down id connectionId
nmcli connection show
nmcli connection show --active
nmcli connection show --configured
nmcli connection show --show-secrets
nmcli device wifi list
nmcli device wifi rescan
nmcli general status
nmcli radio wifi
nmcli radio wifi off
nmcli radio wifi on
npm cache clean --force
npm config set prefix "$NPM_PACKAGES"
npm install -g @angular/cli
npm install -g @reduxjs/toolkit
npm install -g appium
npm install -g asar
npm install -g browserslist
npm install -g depcheck
npm install -g ember-cli
npm install -g eslint
npm install -g frida
npm install -g generator-code
npm install -g jquery
npm install -g js-beautify
npm install -g latest-version-cli
npm install -g leaflet
npm install -g markdownlint
npm install -g markdownlint-cli
npm install -g neovim
npm install -g npm
npm install -g npm-check-updates
npm install -g ovsx
npm install -g prettier
npm install -g snyk
npm install -g spectron
npm install -g svgo
npm install -g typescript
npm install -g vsce
npm install -g wappalyzer
npm install -g yo
npx asar
nvidia-smi
objdump -R elf-binary-filename
objdump -S elf-binary-filename
objdump -d elf-binary-filename
objdump -g elf-binary-filename
objdump -r elf-binary-filename
openfortivpn fortigate.ankitpati.in -u ankitpati -p SecretPassword -o 012345
openssl asn1parse -in openssl.key
openssl genpkey -algorithm RSA -aes128 -out openssl.key
openssl pkcs8 -in openssl.key | openssl pkcs8 -topk8 -v2 aes128 -out openssl.key
openssl pkey -aes128 -in openssl.key -text
openssl req -x509 -days 36500 -new -key id_rsa -out id_rsa.x509
openssl rsa -in openssl.key -pubout -out openssl.pub
openssl rsa -in openssl.key -text -noout
openssl s_client -connect ankitpati.in:443
openssl x509 -in ankitpati.pem -text
openssl x509 -in ankitpati.pem -text -noout
optipng -o7 filename.png
osascript -e 'id of app "VSCodium"'
ovsx create-namespace ankitpati --pat SecretPersonalAccessToken
ovsx publish --pat SecretPersonalAccessToken
p4 client
p4 client -o
p4 dirs -H //depot/\*
p4 dirs //depot/\*
p4 dirs //depot/t\*
p4 help sizes
p4 info
p4 login
p4 login -as
p4 monitor show
p4 monitor terminate 1234
p4 opened
p4 set
p4 sizes -sh //depot/directory/...
p4 sync //depot/directory/...
p4 sync //depot/directory/...#none
p4 sync //depot/directory/file
p4 trust
package-cleanup
package-cleanup --dupes
package-cleanup --leaves
package-cleanup --orphans
package-cleanup --problems
pactl info
pactl list sinks
passwd postgres
patch filename.c filename.c.patch
pavumeter --record
pbcopy < ~/.ssh/id_ed25519.pub
perl -MModule::CoreList -E 'say Module::CoreList->find_modules(qr/path/i)'
perl -MModule::CoreList -E 'say Module::CoreList->first_release(q{File::Path})'
perl -dE 0
perl -pi -E 'chomp if eof' filename.txt
perlbrew list-modules
perlbrew upgrade-perl
pgrep -x chrome
pidof -s chrome
pidof chrome
ping -s 1500 ankitpati.in
pip install -r requirements.txt
pip install cx_Oracle
pip install data-science-types
pip install endgame
pip install frida
pip install frida-tools
pip install guiscrcpy
pip install gunicorn
pip install imblearn
pip install jupyterlab
pip install meson
pip install mvt
pip install pycairo
pip install pycurl
pip install pyment
pip install python-poppler-qt5
pip install pytype
pip install safety
pip install scipy
pip install shap
pip install slip
pip install tables
pip install voila
pip install wheel
pip install wxPython
pip install xgboost
pkill -x chrome
pkmon
plackup -L Shotgun filename.psgi
plackup -r filename.psgi
plackup filename.psgi
plasma-nm
pod2pdf path/to/Perl/Module.pm > Perl-Module-docs.pdf
podchecker path/to/Perl/Module.pm
podlinkcheck path/to/Perl/Module.pm
podlint path/to/Perl/Module.pm
podman images
podman info
podman inspect -l
podman list
podman ps
podman pull fedora
podman pull fedora-toolbox
podman pull registry.fedoraproject.org/f34
podman rmi 536f3995adeb
podman stop fedora-toolbox-33
popd
potrace filename.png
prettier -w filename.css
prettier -w filename.html
prettier -w filename.js
prettyping google.com
pup 'css-selector' < filename.html
pup --color < filename.html
pushd path/to/directory/
pylint --py3k path/to/python/file.py
pyment -w path/to/python/file.py
python -m pdb <(echo 'import sys; print(sys.path);')
python -m pdb <(echo)
python -m pdb filename.py
python -m timeit '"-".join(str(n) for n in range(100))'
python -m venv .venv
qemu-img convert filename.vmdk filename.qcow2
raku -E 'say "hello"'
readelf -x .rodata elf-binary-filename
rename -n 's/^\d+_\d+_0(\d)_[^a-z]+_(\w+)\.mp4$/$1. $2.mp4/' -- *
resolvectl flush-caches
resolvectl query ankitpati.in
restorecon -rvn /etc/X11/xorg.conf.d/
rg -F -- '$_ =~ '
rg -L search-string
rlwrap raku
rm -rf /Users/Shared/*Relocated\ Items*/
rpg 100 | sed -E 's/[^A-Za-z0-9!@#$%^*_=+;:]/=/g'
rpg 100 | sed -E 's/\//-/g'
rpm2cpio filename.rpm | cpio -idmv
rpmconf -a -f vimdiff
rpmconf -c
scour filename.svg filename-scour.svg -v --no-renderer-workaround --strip-xml-prolog --remove-titles --remove-descriptions --remove-metadata --remove-descriptive-elements --enable-comment-stripping --disable-embed-rasters --enable-viewboxing --indent=none --no-line-breaks --strip-xml-space --enable-id-stripping --shorten-ids
scrcpy --force-adb-forward -b 1000
scrcpy -b 1000
script -T timing script
scriptreplay -t timing script
scriptreplay typescript
sdk install btrace
sdk install gradle
sdk install groovy
sdk install kotlin
sdk install maven
sdk install sbt
sdk install visualvm
sed -E 's/ /\n/g' < /proc/cmdline
sed -i -E 's|#!/usr/bin/octave -q|#!/usr/bin/env -S octave -q|g' -- *.m
sha256sum -c filename-CHECKSUM
sloccount .
snap install flutter --classic
snap list
snyk auth
softwareupdate -i -a; brew update; brew upgrade; cpan-outdated --exclude-core -p | xargs cpanm; gcloud components update; tldr --update; for codext in $(codium --list-extensions); do codium --install-extension "$codext" --force; done; vim +PlugUpdate
source ./.venv/bin/activate
spctl developer-mode enable-terminal
speedtest
sqlformat -k upper -i lower -r --indent_width 4 --indent_columns -s --comma_first True filename.sql
sqlite3 filename.sqlite
ss -tulpn
ssh -L 8080:/tmp/sockname.sock ssh.ankitpati.in
ssh -o ClearAllForwardings=yes ssh.ankitpati.in
ssh-copy-id -o PasswordAuthentication=yes ssh.ankitpati.in
ssh-keygen -l -v -f ~/.ssh/id_ed25519
ssh-keygen -l -v -f ~/.ssh/id_ed25519.pub
ssh-keygen -t ed25519
ssh-keygen -y -f ~/.ssh/id_ed25519
stat -c '%w' filename
strace -e open -o programname.strace programname programargs
strace programname 2> programname.strace
sudo bash -c 'apt update; apt-fast dist-upgrade -y; apt autoremove -y; apt clean; snap refresh; flatpak update; pkcon refresh force; pkcon update; fwupdmgr get-updates; fwupdmgr upgrade; chmod 750 /usr/bin/nmap /usr/sbin/etherape; chown root:wireshark /usr/bin/nmap /usr/sbin/etherape; setcap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/bin/nmap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/sbin/etherape'
sudo bash -c 'dnf upgrade --refresh; snap refresh; flatpak update; pkcon refresh force; pkcon update; fwupdmgr get-updates; fwupdmgr upgrade; chmod 750 /usr/bin/nmap /usr/sbin/etherape; chown root:wireshark /usr/bin/nmap /usr/sbin/etherape; setcap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/bin/nmap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/sbin/etherape'
sudo bash -c 'rfkill unblock bluetooth; systemctl restart bluetooth.service'
sudo bash -c 'systemctl stop libvirtd.socket; systemctl stop libvirtd.service'
svg2png filename.svg
systemctl edit --user --force --full filename.service
systemctl edit --user filename.service
systemctl list-units --type=service --state=active
systemctl list-units --type=service --state=running
systemd-analyze cat-config systemd/resolved.conf
tail -n +2 brew-deps.csv | cut -d, -f1 | comm -23 - brew-install-list.txt | while read -r brew_formula; do grep "^$brew_formula" brew-deps.csv; done
terraform apply
terraform fmt
terraform graph | apdot -Tpng | timg -
terraform graph | apdot -Tsvg > filename.svg
terraform init
terraform init -verify-plugins=false
terraform plan
terraform refresh
terraform validate
timedatectl set-timezone Asia/Kolkata
toolbox create
toolbox enter
toolbox list
toolbox reset
toolbox rm --all
toolbox rm fedora-toolbox-34
toolbox rmi --all
tree -L 2
tree -a
tweak filename.txt
typespeed
ufw allow in ssh
ufw enable
ugrep -Q
ugrep -Q -.
uname -a
uname -r
unix2dos filename.txt
update-alternatives --config java
update-alternatives --config javac
update-alternatives --set editor /bin/vim
updatedb
uprecord
uptime
usb-devices
usermod -aG libvirt ankitpati
usermod -aG wireshark ankitpati
vctl images -a
vctl images -d
vctl kind
vctl ps -a
vctl pull rockylinux
vctl rm -a
vctl rmi -a
vctl run -it rockylinux bash
vctl system info
vctl system start
vctl system stop
vctl version
vctl volume
vctl volume prune
vdpauinfo
vim -i NONE -u NONE ~/.viminfo
vim -i NONE ~/.viminfo
vim -u NONE ~/.viminfo
vim /etc/shells
virsh -c qemu:///system list --all
virsh -c qemu:///system send-key Windows-10 --codeset win32 37
virsh -c qemu:///system send-key Windows-10 --codeset win32 KEY_J
virsh -c qemu:///system send-key Windows-10 --codeset xt 37
virsh -c qemu:///system send-key Windows-10 KEY_ENTER
virsh -c qemu:///system send-key Windows-10 KEY_J
virsh -c qemu:///system send-key Windows-10 KEY_R KEY_E KEY_M KEY_O KEY_T KEY_E KEY_SPACE KEY_U KEY_P KEY_D KEY_A KEY_T KEY_E
virsh qemu-monitor-command info
virsh qemu-monitor-command info version
virsh send-key Windows-10 --codeset xt 37
virsh send-key dom --codeset xt 37
vmrun getGuestIPAddress ~/Virtual\ Machines.localized/vm_name.vmwarevm/vm_name.vmx
vmrun list
vmrun start ~/Virtual\ Machines.localized/vm_name.vmwarevm/ nogui
wappalyzer https://ankitpati.in | jq .
wget 'https://www.toptal.com/developers/gitignore/api/java,netbeans,eclipse,jetbrains,android,androidstudio' -O .gitignore
whatchanged origin/development..
while :; do virsh -c qemu:///system send-key Windows-10 KEY_J; sleep 120; done
while :; do xdotool mousemove --sync 1000 10 sleep 0.5 mousemove restore; sleep 120; done
while read -r directory; do find "$(case "$directory" in -*) printf '%s' ./ ;; esac; printf '%s' "$directory")" \( -type f -exec ls -lt -- {} \; -exec md5sum -- {} \; \) -o \( -type d -exec ls -ltd -- {} \; -exec printf '%s%s' 'directory ' {} \; \); done < directory-list.txt
while read -r gitdir; do ( cd "$gitdir/"; git pull ) done < <(ls)
write ankitpati :1
write ankitpati tty4
xattr -l filename
xattr filename
xclip < ~/.ssh/id_ed25519.pub
xclip < ~/Code/ankitpati.in/public/gpg.asc
xclip-copyfile filename
xcode-select --install
xcodebuild -license
xdg-open .
xdg-open filename
xdotool click --repeat 5 1
xz -v9e filename.tar
yapf filename.py | sponge bmark.py
youtube-dl 'https://www.youtube.com/watch?v=VIDEO_ID' -F
youtube-dl 'https://www.youtube.com/watch?v=VIDEO_ID' -f 248
zbarimg filename.jpg > filename.dat
