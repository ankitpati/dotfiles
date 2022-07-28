#!/usr/bin/env bash
( GIT_COMMITTER_NAME='Ankit Pati' GIT_COMMITTER_EMAIL='contact@ankitpati.in' git rebase branch-name --exec 'git commit --amend --author="Ankit Pati <contact@ankitpati.in>" --no-edit' )
( LESS='-I' git log )
( hostname='google.com'; openssl s_client -auth_level 2 -connect "$hostname":443 -servername "$hostname" -verify_hostname "$hostname" -verify_return_error )
( hostname='google.com'; openssl s_client -tls1_3 -auth_level 2 -connect "$hostname":443 -servername "$hostname" -verify_hostname "$hostname" -verify_return_error )
( perforce_dir=//depot/directory; p4 dirs "$perforce_dir/*" | while read -r perforce_subdir; do p4 grep -e 'search-expression' "$perforce_subdir/..."; done )
( perforce_dir=//depot/directory; p4 dirs "$perforce_dir/*"; p4 sizes -sh "$perforce_dir/..." )
( ssh_private_key_file=id_ed25519; ssh-keygen -l -v -f "$ssh_private_key_file" && ssh-keygen -y -f "$ssh_private_key_file" && cat "$ssh_private_key_file" )
( unalias -a; comm -12 <(hash -r; ls {,/usr}/{,s}bin/ | xargs command -V 2>/dev/null | grep -Ev " is ($(brew --prefix)/|a shell (builtin|keyword))" | cut -d' ' -f1 | sort -u) <(ls "$(brew --prefix)/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/" | rev | cut -d. -f2- | rev | sort -u) )
/bin/ls -l@
/usr/libexec/java_home
/usr/libexec/java_home -V
/usr/libexec/java_home -v 1.8
P4DIFF=vimdiff p4 diff -Od -f //depot/directory/...
P4DIFF=vimdiff p4 diff -f //depot/directory/...
P4DIFF=vimdiff p4 diff -f //depot/directory/filename.pl
PATH="$(echo "$PATH" | sed 's/:/\n/g' | grep -v binutils | paste -sd :)" cpan Unicode::GCString
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
apdot filename.dot -Tpng | timg -
apktool d filename.apk
apt install iat
apt-mark auto ubuntu-restricted-addons
apt-mark showmanual
aria2c -c -x 16 https://ankitpati.in/filename.br
arkade info inlets-operator
arkade install istio
banner Type your message here.
bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
bash -c 'dscacheutil -flushcache; killall -HUP mDNSResponder'
bash <(curl https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | perl -0pE 's/^have_sudo_access\(\) {.*?^}/have_sudo_access() { HAVE_SUDO_ACCESS=0; return 0; }/sm' | perl -0pE 's/^execute_sudo\(\) {.*?^}/execute_sudo() { ohai "\$\@"; execute "\$\@"; }/sm')
bat --config-dir
bat --config-file
bat --style changes filename.pl
bazel build //:TargetName
bazel clean
bazel help query
bazel query --notool_deps --noimplicit_deps deps\(//:TargetName\) --output graph | apdot -Tpng | timg -
below
below help
below replay --time '5 minutes ago'
bind -P
brew --prefix
brew analytics off
brew autoremove -n
brew config
brew developer --verbose state
brew developer on
brew doctor
brew help --prefix
brew help developer
brew install --cask chromedriver
brew install --cask chromium
brew install --cask docker
brew install --cask google-chrome
brew install --cask google-cloud-sdk
brew install --cask iterm2
brew install --cask maccy
brew install --cask p4
brew install --cask p4v
brew install --cask slack
brew install --cask vscodium
brew install --cask webex-meetings
brew install ack
brew install act
brew install advancecomp
brew install age
brew install aliyun-cli
brew install ant
brew install argocd
brew install aria2
brew install arkade
brew install arp-scan
brew install arping
brew install astyle
brew install atlas
brew install automake
brew install aws-cdk
brew install aws-shell
brew install awscli
brew install base64
brew install basex
brew install bash
brew install bash-completion@2
brew install bash_unit
brew install bat
brew install bazel
brew install bc
brew install binutils
brew install bison
brew install black
brew install byacc
brew install bzip2
brew install cdk8s
brew install certigo
brew install checkbashisms
brew install checkstyle
brew install chrome-cli
brew install chrome-export
brew install ciphey
brew install clang-format
brew install click
brew install clusterctl
brew install cmake
brew install coreutils
brew install cscope
brew install csvprintf
brew install curl
brew install dagger
brew install dash
brew install datree
brew install ddrescue
brew install dependency-check
brew install devspace
brew install diffoscope
brew install diffstat
brew install difftastic
brew install diffutils
brew install dnscontrol
brew install dnstracer
brew install docker-completion
brew install docker-slim
brew install dockviz
brew install doggo
brew install dos2unix
brew install doxygen
brew install driftctl
brew install dsq
brew install dyld-headers
brew install dylibbundler
brew install ed
brew install eksctl
brew install eslint
brew install expect
brew install fd
brew install file-formula
brew install findutils
brew install firebase-cli
brew install fits
brew install flake8
brew install flex
brew install forcecli
brew install fselect
brew install fzf
brew install gawk
brew install gcc
brew install gh
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
brew install go-critic
brew install google-java-format
brew install gops
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
brew install howdoi
brew install hping
brew install htop
brew install http-prompt
brew install httpd
brew install httpie
brew install httrack
brew install hyperfine
brew install ijq
brew install inetutils
brew install iproute2mac
brew install ipv6calc
brew install iredis
brew install irssi
brew install istioctl
brew install ivy
brew install jd
brew install jfrog-cli
brew install jless
brew install jq
brew install jsonlint
brew install jvm-mon
brew install k6
brew install k9s
brew install kind
brew install kops
brew install kotlin
brew install krew
brew install ksh
brew install kube-linter
brew install kube-score
brew install kubecfg
brew install kubecm
brew install kubergrunt
brew install kubescape
brew install lastpass-cli
brew install less
brew install libressl
brew install libtermkey
brew install libvterm
brew install litecli
brew install lsof
brew install lsusb
brew install lychee
brew install lz4
brew install lzip
brew install m4
brew install make
brew install man-db
brew install mandoc
brew install marp-cli
brew install masscan
brew install massren
brew install mat2
brew install maven
brew install maven-completion
brew install mdcat
brew install mg
brew install minikube
brew install minio-mc
brew install mist
brew install moreutils
brew install mosh
brew install mprocs
brew install mscgen
brew install mypy
brew install nano
brew install ncdu
brew install neofetch
brew install netcat
brew install nmap
brew install numdiff
brew install ocrmypdf
brew install octosql
brew install onefetch
brew install opa
brew install openssh
brew install openstackclient
brew install oq
brew install php
brew install pip-completion
brew install pixie
brew install plantuml
brew install postgresql
brew install prettier
brew install proctools
brew install proguard
brew install proselint
brew install pwgen
brew install pyenv
brew install pylint
brew install pyright
brew install pywhat
brew install qemu
brew install rakudo
brew install range2cidr
brew install redpen
brew install reorder-python-imports
brew install rich-cli
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
brew install skaffold
brew install sloccount
brew install snyk
brew install snyk-iac-rules
brew install socat
brew install speedtest-cli
brew install sqlfluff
brew install sqlite-analyzer
brew install src-cli
brew install ssdeep
brew install ssh-copy-id
brew install sslscan
brew install sslyze
brew install staticcheck
brew install stylua
brew install swift
brew install tcpdump
brew install tcpreplay
brew install tcptrace
brew install tcptraceroute
brew install tcsh
brew install tealdeer
brew install terminal-notifier
brew install terracognita
brew install terraform
brew install terraform-docs
brew install terraform-rover
brew install terraform_landscape
brew install terraformer
brew install terraforming
brew install terrascan
brew install testssl
brew install tflint
brew install tfmigrate
brew install tfsec
brew install tfupdate
brew install tika
brew install timg
brew install tmux
brew install tree
brew install treefmt
brew install trivy
brew install ugrep
brew install uncrustify
brew install uni
brew install unifdef
brew install universal-ctags
brew install unzip
brew install util-linux
brew install vim
brew install watch
brew install watchexec
brew install wget
brew install whois
brew install with-readline
brew install xdg-ninja
brew install xidel
brew install yamllint
brew install yapf
brew install yq
brew install zip
brew install zlib
brew install zsh
brew leaves --installed-as-dependency
brew leaves --installed-on-request
brew linkage
brew list --casks
brew livecheck --debug kubernetes-cli
brew livecheck kubernetes-cli
brew missing
brew reinstall --cask vscodium
brew reinstall --cask webex-meetings
brew reinstall httpd
brew search --fedora perl-Mojolicious
brew search --ubuntu libmojolicious-perl
brew services info --all
brew shellenv
brew tap snyk/tap
brew tap sourcegraph/src-cli
brew uninstall --zap docker-completion
brew uninstall --zap evince
brew uninstall --zap lesspipe
brew uninstall --zap llvm
brew uninstall --zap perltidy
brew uninstall --zap quip
brew uses curl
brew which-formula sponge
brew-list-deps
brotli -d filename.br
brotli filename
browserslist 'last 1 Chrome versions'
cargo install cargo-update
cargo install shellharden
cat *.tf | vipe --suffix=tf >/dev/null
cat <(curl https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem) <(curl https://truststore.pki.us-gov-west-1.rds.amazonaws.com/global/global-bundle.pem) > ~/.postgresql/root.crt
ccd2iso disk-image.bin disk-image.iso
checkstyle -c /google_checks.xml Filename.java
checkstyle -c /sun_checks.xml Filename.java
chsh -s "$(brew --prefix)/bin/bash"
codium --install-extension ankitpati.vscodium-amoled --force
codium --install-extension eamodio.gitlens --force
codium --install-extension jock.svg --force
codium --install-extension redhat.java --force
codium --install-extension vscjava.vscode-java-debug --force
codium --install-extension vscodevim.vim --force
codium --list-extensions
comm -23 <(grep -P '^brew install (?!--cask )' ~/Code/Dotfiles/src/.bash_history | cut -d' ' -f3) <(brew leaves --installed-on-request)
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
csv -f protocol,root_domain,status < nextdns-log.csv | tail -n +2 | grep -v ',blocked$' | rev | cut -d, -f2- | rev | sort -u > nextdns-domain-list.csv
curl 'https://example.org/untrustworthy.dat'; exec cat
curl --connect-to example.org:80:localhost:8080 http://example.org
curl --key openssl.key --cert openssl.crt https://mtls.example.org
curl --resolve example.org:80:127.0.0.1 http://example.org
curl -H "Authorization: token $(lpass show --password github_personal_access_token)" https://raw.githubusercontent.com/namespace/private-repo/branch/directory/filename.c
curl -s -w '\n%{time_total} - %{time_starttransfer}\n' https://httpbin.org/get | tail -n 1 | bc
curl -vvvpx https://squid.ankitpati.in:1080 https://ankitpati.in
curl https://github.com/web-flow.gpg | gpg --import
curl https://ident.me; echo; exec cat
dart --disable-analytics
date +%F
date +%s
date -d@1619533275
dconf dump / > dump.dconf
dd if=/dev/urandom count=1 2>/dev/null | git hash-object --stdin
deactivate
declare -p | grep '^declare -- '
defaults help
defaults read com.apple.DictionaryServices DCSActiveDictionaries
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false
df -h
df -i
diff -u5 -r directory1/ directory2/ | delta
dig -t ANY google.com
dig -x 172.30.83.9
dig -x ankitpati.in
dig ankitpati.in
dig ankitpati.in @1.1.1.1
dirs -v
dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
dnf copr enable kwizart/fedy
dnf copr enable zeno/scrcpy
dnf groupupdate core
dnf groupupdate multimedia
dnf groupupdate sound-and-video
dnf install @virtualization
dnf install FlightGear
dnf install HandBrake
dnf install HandBrake-gui
dnf install LabPlot
dnf install NetworkManager-\*-gnome
dnf install OpenStego
dnf install SDL2
dnf install SDL2-devel
dnf install SDL2-static
dnf install ShellCheck
dnf install \*-firmware
dnf install abiword
dnf install abootimg
dnf install ack
dnf install advancecomp
dnf install aegisub
dnf install age
dnf install aircrack-ng
dnf install aireplay-ng
dnf install akmod-nvidia
dnf install android-tools
dnf install ant
dnf install apache-ivy
dnf install apostrophe
dnf install ardour5
dnf install ardour6
dnf install arduino
dnf install aria2
dnf install asciinema
dnf install astyle
dnf install audacity
dnf install awscli
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
dnf install ccd2iso
dnf install celestia
dnf install certbot
dnf install cheat
dnf install cheese
dnf install chromedriver
dnf install chromium
dnf install codium
dnf install conda
dnf install containers-common
dnf install copyq
dnf install cpulimit
dnf install criu-libs
dnf install cscope
dnf install csv
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
dnf install dkms
dnf install dnf-plugin-system-upgrade
dnf install dnf-utils
dnf install dnstracer
dnf install dolphin
dnf install dolphin-plugins
dnf install dotnet
dnf install dracut-live
dnf install drawing
dnf install easytag
dnf install easytag-nautilus
dnf install egl-wayland
dnf install elixir
dnf install emacs-nox
dnf install enca
dnf install entangle
dnf install epiphany
dnf install erlang
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
dnf install foremost
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
dnf install gnome-connections
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
dnf install gnome-todo
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
dnf install hwloc
dnf install hwloc-gui
dnf install i2c-tools
dnf install i2c-tools-perl
dnf install ibus-uniemoji
dnf install igt-gpu-tools
dnf install impallari-raleway-fonts
dnf install indent
dnf install inkscape
dnf install inxi
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
dnf install koji
dnf install kolourpaint
dnf install konqueror
dnf install konsole5
dnf install krb5-devel
dnf install krename
dnf install krita
dnf install krop
dnf install kruler
dnf install ksnip
dnf install ktouch
dnf install ldns-utils
dnf install lensfun
dnf install libaom
dnf install libaom-devel
dnf install libcurl-devel
dnf install libdb-devel
dnf install libdvdcss
dnf install libffi-devel
dnf install libimobiledevice
dnf install libimobiledevice-devel
dnf install libimobiledevice-utils
dnf install libpq-devel
dnf install libpst
dnf install librabbitmq-devel
dnf install librabbitmq-tools
dnf install librecad
dnf install libreoffice-draw
dnf install librsvg2-devel
dnf install librsvg2-tools
dnf install librsync-devel
dnf install librttr
dnf install libstdc++-docs
dnf install libusb1-devel
dnf install libusbx-devel
dnf install libva-utils
dnf install libva-vdpau-driver
dnf install libvdpau
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
dnf install mdevctl
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
dnf install ntfs-3g-libs
dnf install numactl
dnf install nvidia-settings
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
dnf install perl-Algorithm-Diff
dnf install perl-App-cpanminus
dnf install perl-BerkeleyDB
dnf install perl-Browser-Open
dnf install perl-Carton
dnf install perl-Cpanel-JSON-XS
dnf install perl-Crypt-Random
dnf install perl-DBI
dnf install perl-Data-Printer
dnf install perl-Devel-Cover
dnf install perl-Devel-Cycle
dnf install perl-Devel-NYTProf
dnf install perl-EV
dnf install perl-Filesys-Notify-Simple
dnf install perl-Future
dnf install perl-Future-AsyncAwait
dnf install perl-Graph-Easy
dnf install perl-GraphViz-XML
dnf install perl-HTML-Parser
dnf install perl-HTML-Selector-XPath
dnf install perl-HTML-Tagset
dnf install perl-HTML-Tree
dnf install perl-IO-Socket-Socks
dnf install perl-IO-String
dnf install perl-IPC-Cmd
dnf install perl-IPC-Run3
dnf install perl-IPC-Shareable
dnf install perl-Imager
dnf install perl-Import-Into
dnf install perl-JSON-XS
dnf install perl-LWP-Protocol-https
dnf install perl-List-AllUtils
dnf install perl-List-MoreUtils
dnf install perl-List-MoreUtils-XS
dnf install perl-List-SomeUtils-XS
dnf install perl-MetaCPAN-Client
dnf install perl-Modern-Perl
dnf install perl-Module-Util
dnf install perl-Mojo-RabbitMQ-Client
dnf install perl-Mojolicious
dnf install perl-Net-AMQP
dnf install perl-Net-IDN-Encode
dnf install perl-Net-IDN-Nameprep
dnf install perl-PDF-Create
dnf install perl-Parallel-ForkManager
dnf install perl-Perl-Critic
dnf install perl-Pod-Spell
dnf install perl-Readonly
dnf install perl-Redis
dnf install perl-Regexp-Trie
dnf install perl-Role-Tiny
dnf install perl-SOAP-Lite
dnf install perl-SQL-Translator
dnf install perl-Sereal
dnf install perl-String-ShellQuote
dnf install perl-Sys-Virt
dnf install perl-Task-Kensho-\*
dnf install perl-Term-ReadLine-Gnu
dnf install perl-Test-Base
dnf install perl-Test-Class
dnf install perl-Test-Differences
dnf install perl-Test-Exception
dnf install perl-Test-FailWarnings
dnf install perl-Test-Fatal
dnf install perl-Test-Identity
dnf install perl-Test-MockModule
dnf install perl-Test-MockObject
dnf install perl-Test-Pod
dnf install perl-Test-Simple
dnf install perl-Test-Warn
dnf install perl-Test-Warnings
dnf install perl-Text-CSV
dnf install perl-Text-Diff
dnf install perl-TryCatch
dnf install perl-URI-Escape-XS
dnf install perl-Unicode-LineBreak
dnf install perl-WWW-Form-UrlEncoded
dnf install perl-WWW-Mechanize
dnf install perl-XML-Bare
dnf install perl-XML-Parser
dnf install perl-XML-SAX
dnf install perl-XML-Writer
dnf install perl-YAML
dnf install perl-YAML-LibYAML
dnf install perl-aliased
dnf install perl-hivex
dnf install perl-pod2pdf
dnf install perl-podlators
dnf install perl-podlinkcheck
dnf install perl-utf8-all
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
dnf install perl\(Neovim::Ext\)
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
dnf install perltidy
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
dnf install plasma-nm-\*
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
dnf install python3-i2c-tools
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
dnf install rabbitmq-server
dnf install rakudo
dnf install rakudo-zef
dnf install rawtherapee
dnf install rcs
dnf install readline-devel
dnf install reaver
dnf install recorder
dnf install redis
dnf install remmina
dnf install reptyr
dnf install retext
dnf install rhythmbox-alternative-toolbar
dnf install ripgrep
dnf install rlwrap
dnf install rpmconf
dnf install rpmfusion-free-release
dnf install rpmfusion-free-release-tainted
dnf install rpmfusion-nonfree-release
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
dnf install sonic-visualiser
dnf install soundconverter
dnf install speedtest-cli
dnf install sqlite-devel
dnf install sscg
dnf install ssdeep
dnf install stacer
dnf install stardict
dnf install stardict-dic-hi
dnf install steghide
dnf install stellarium
dnf install stow
dnf install strace
dnf install strongswan-charon-nm
dnf install strongswan-libipsec
dnf install subtitleeditor
dnf install sunflow
dnf install sushi
dnf install svg2svgt
dnf install svt-\*
dnf install swift-lang
dnf install synfigstudio
dnf install sysfsutils
dnf install tealdeer
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
dnf install vidcutter
dnf install vim-enhanced
dnf install vlc
dnf install vlc-extras
dnf install vmpk
dnf install vorbis-tools
dnf install vulkan
dnf install vulkan-tools
dnf install wdiff
dnf install wireshark
dnf install wxGlade
dnf install wxMaxima
dnf install xautomation
dnf install xclip
dnf install xdelta
dnf install xdotool
dnf install xfoil
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
dnf install zint-qt
dnf install zlib.i686
dnf install zopfli
dnf install zsh
dnf list extras
dnf needs-restarting
dnf remove \*-blivet
dnf remove abcli
dnf remove abrt
dnf remove awscli
dnf remove broadcom-wl
dnf remove csstidy
dnf remove docker
dnf remove fedora-chromium-config
dnf remove fedora-user-agent-chrome
dnf remove freedoom\*
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
dnf repoquery --duplicates
dnf repoquery --extras
dnf repoquery --extras --exclude=kernel,kernel-\*
dnf repoquery --unsatisfied
dnf system-upgrade download --refresh --releasever=36
dnf system-upgrade reboot
dnstracer -s . ankitpati.in
dnstracer ankitpati.in
docker build --build-arg username='ankitpati' -t opensuse-dev .
docker build --progress=plain -t opensuse-dev .
docker build --pull --no-cache -t fedora-dev .
docker build -t image-name:optional-tag .
docker images --no-trunc --digests opensuse-dev
docker images -a
docker inspect --format='{{index .RepoDigests 0}}' opensuse/tumbleweed
docker inspect tender_chatterjee
docker network ls -q | xargs -r docker network inspect -v
docker ps --no-trunc -a
docker run --pull always -it --rm fedora
docker run --pull always -it --rm opensuse/tumbleweed
docker run --pull always -it --rm oraclelinux:8
docker run --pull always -it --rm rockylinux
docker run --pull always -it --rm ubuntu:rolling
docker run --pull never -it -v "$(pwd):/host-directory" --rm fedora-dev
docker run -it --rm fedora
docker run -it --rm oraclelinux:8
docker run -it --rm ubuntu:rolling
docker scan --accept-license --version
docker scan --login --token "$(lpass show --password snyk_auth_token)"
docker scan opensuse-dev
docker system info
docker system prune
dockviz images -d | apdot | timg -
dockviz images -d | patchwork | apdot | timg -
dockviz images -t
drill -x 1.1.1.1
drill ankitpati.in
echo "$LINES" "$COLUMNS"
echo 'Subject: Hello' | sendmail -v contact@ankitpati.in
echo 'macOS Notification Text' | terminal-notifier
echo '{ "name": "Ankit" }' | jq '.name | ascii_downcase'
echo 0 | jq 'builtins'
echo gcr.io | docker-credential-gcloud get | jq .
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
env __GLX_VENDOR_LIBRARY_NAME=nvidia __NV_PRIME_RENDER_OFFLOAD=1 /usr/bin/brave-browser --gpu-sandbox-failures-fatal=yes
errno --list
eslint --fix filename.js
eslint filename.js
exa
exec su - ankitpati
exec sudo -i
exec sudo -u ankitpati -i
exiftool -p '$XResolution,$YResolution' filename.jpg
export GH_TOKEN="$(lpass show --password github_personal_access_token)"
export GITHUB_PERSONAL_ACCESS_TOKEN="$(lpass show --password github_personal_access_token)"
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
export KUBECONFIG='kubeconfig.yaml'
export SRC_ACCESS_TOKEN="$(lpass show --password sourcegraph_access_token)"
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
fd -F filename.c++
fd -a filename
fd -gp '**/to/file'
fd -p 'th/t./file.*\.ext$'
fd -p path/to/filename.ext
fd -p path[12]/to/filename
fd -p th/to/file
fd -uu filename
fd -uup path/to/filename
fd Makefile
fd filename[12]
fd path/to/filename
fdupes -r .
fdupes -rN .
fdupes -rNd .
fdupes .
figlet Type your message here.
file -i filename
find . -not -group ankitpati
find . -not -user ankitpati
find . -type f -exec chmod 0600 {} + -exec dos2unix {} +
find . -type f -exec mv -t /directory-name/ {} +
find . -type f -name '*.lastUpdated' -delete
firewall-cmd --add-forward-port=port=443:proto=tcp:toport=8443
firewall-cmd --add-masquerade
firewall-cmd --add-protocol=ssh
firewall-cmd --add-service=ssh --zone=public --permanent
firewall-cmd --get-zone-of-interface=enp1s0
firewall-cmd --list-all
firewall-cmd --list-ports
firewall-cmd --list-services
firewall-cmd --reload
firewall-cmd --remove-forward-port=port=443:proto=tcp:toport=8443
firewall-cmd --remove-masquerade
firewall-cmd --remove-service=ssh --permanent
firewall-cmd --state
flatpak install com.belmoussaoui.Obfuscate
flatpak install com.github.alexhuntley.Plots
flatpak install com.github.hugolabe.Wike
flatpak install com.github.huluti.Curtail
flatpak install com.github.junrrein.PDFSlicer
flatpak install com.github.liferooter.textpieces
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
gcloud auth application-default print-access-token
gcloud auth configure-docker
gcloud auth configure-docker gcr.io
gcloud auth list
gcloud auth login
gcloud auth login --remote-bootstrap='https://accounts.google.com/o/oauth2/auth?response_type=code&client_id=01234567890.apps.googleusercontent.com&scope=openid+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fuserinfo.email+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcloud-platform+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fappengine.admin+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fsqlservice.login+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Fcompute+https%3A%2F%2Fwww.googleapis.com%2Fauth%2Faccounts.reauth&state=abcdABCF0123abcdABCF0123abcdAB&access_type=offline&code_challenge=abcde-abcdABCD0123abcdABCD0123abcdABCD0123a&code_challenge_method=S256&token_usage=remote'
gcloud auth print-access-token
gcloud cloud-shell scp localhost:path/to/filename cloudshell:~/
gcloud cloud-shell ssh
gcloud components install gke-gcloud-auth-plugin
gcloud compute images list
gcloud compute networks list
gcloud compute zones list
gcloud compute zones list --project=project-id
gcloud config configurations list
gcloud config list
gcloud config set compute/region us-west1
gcloud config set compute/zone us-west1-a
gcloud config set project project-id
gcloud config unset project
gcloud container clusters get-credentials cluster-name --region region-name --project project-name
gcloud container get-server-config --format='yaml(defaultClusterVersion)'
gcloud info
gcloud projects get-iam-policy project-name
gcloud projects list
gcloud topic filters
gcloud version
gdb elfname
getcap "$(command -v nmap)"
getfacl "$(command -v nmap)"
getfattr "$(command -v nmap)"
gh config list
gh config set git_protocol ssh
gh issue list
gh pr list
gh pr status
git add -p
git branch --format='%(refname:short)' | while read -r branch; do git checkout "$branch" || break; git rebase origin/main || break; done
git branch -r | grep -E '^\s+origin/' | grep -v HEAD | cut -d/ -f2 | xargs git push ankitpati -d
git branch -vv
git checkout -p
git cherry-pick branchname~2..branchname
git commit --amend -S --no-edit
git config --show-origin credential.helper
git diff HEAD~1 --name-only
git difftool branchname -- filename
git fetch origin pull/1000/head:local-branch-name # for GitHub
git lfs install
git log --follow -- filename
git log --graph --pretty=fuller --show-signature
git log --pretty=email
git log --pretty=format:%ae | sort -u | cut -d@ -f2- | sort -u
git log -p
git merge --ff-only branchname
git merge-base HEAD branchname
git rebase branch-name --exec 'git commit --amend --author="Ankit Pati <contact@ankitpati.in>" --no-edit'
git remote -v | sed -E 's/ \((fetch|push)\)$//' | sort -u | while read -r remote_name remote_url; do remote_url="$(echo "$remote_url" | sed 's,^ssh://git@,ssh://,')"; git remote set-url "$remote_name" "$remote_url"; done
git remote add origin https://github.com/ankitpati/rpg.git
git restore filename
git show --format= --name-only
git show --show-signature
git show -U100
git submodule add https://github.com/ankitpati/rpg.git modules/ankitpati/rpg
git submodule update
git submodule update --init
gjs-console
go get github.com/ericchiang/pup
go get png2svg
go-avif
google-java-format -i -a Filename.java
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
grep '\bcertificate-authority-data\b' kubeconfig.yaml | cut -d: -f2 | cut -d' ' -f2 | while read -r certbase64; do echo "$certbase64" | base64 -d | openssl x509 -text -noout; done
grep '^p4 sync ' ~/.bash_history | cut -d' ' -f3- | sort -u | while read -r p4dir; do p4 sync "$p4dir"; done
grep -E "^($(tail -n +2 brew-deps.csv | cut -d, -f1 | comm -23 - brew-install-list.txt | paste -sd'|'))" brew-deps.csv | grep -v ,
grep -E '^\s+keg_only' -r "$(brew --prefix)/Homebrew/Library/Taps/homebrew/homebrew-core/Formula/"
grep -Elr -- '^(<<<<<<< HEAD|=======|>>>>>>> [[:xdigit:]]+ .*)$' | sort -u | xargs -o vim
grep -l search-string -r . | xargs -o vim
gsettings set org.gnome.shell.app-switcher current-workspace-only true
guiscrcpy
guiscrcpy config -r
gunzip filename.gz
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
hg clone https://foss.heptapod.net/pypy/pypy pypy
hostname -I
hostnamectl set-hostname boronHostname
html-beautify -f filename.html
http 'https://example.org/untrustworthy.dat'; exec cat
http_this --port 7009
hunspell -l
hwloc-ls
i2cdetect -l
iat disk-image.bin disk-image.iso
id -u
identify -format '%x,%y\n' filename.png
ideviceinfo
idevicepair
info '(coreutils) paste invocation'
inxi
inxi -SMCDG
ip a
ip a show enp0s20u3
ip addr
ip route
ipcrm shm 262162
ipcs -l
ipcs -m
ipcs -s
istioctl --help
istioctl analyze --help
istioctl analyze --namespace namespace
istioctl analyze -A
istioctl install --set revision=release
istioctl proxy-status
istioctl version
istioctl x precheck
iw dev wlp2s0
iw dev wlp2s0 info
iwconfig
iwconfig wlp2s0 freq 5.2G
jamf enroll -prompt
jamf manage
jamf policy
jamf recon
jd --set 1.json 2.json
jd -f patch 1.json 2.json
jd 1.json 2.json
join --nocheck-order -1 2 filename1 filename2
join -t '' filename1 filename2
join filename1 filename2
journalctl
journalctl --vacuum-size=1M
journalctl --vacuum-time=1d
journalctl -f -o cat "$(command -v gnome-shell)"
jq -S --indent 4 . < filename.json
jq . < filename.json
js-beautify filename.js
json-sort-arrays --indent 4 filename.json
jsonlint filename.json
jsonlint-php filename.json
jupyter notebook password
jupyter serverextension enable --py jupyterlab
kate-syntax-highlighter --list-themes
kate-syntax-highlighter -t 'Vim Dark' filename.pl > filename.html
keytool -printcert -file cert.pem
keytool -rfc -list -keystore filename.keystore
keytool -v -list -keystore filename.keystore -storepass changeit
keytool -v -list -keystore filename.keystore -storetype JKS -storepass changeit
kind --help
kind create --help
kind create cluster
kind delete --help
kind delete cluster
kind delete cluster --help
kind delete cluster --name cluster-name
kind export -v 999 logs exported-kind-logs.log
kind get clusters
kind get kubeconfig
kind get nodes
kind version
kubecm --config kubeconfig.yaml list
kubecm list
kubectl --help
kubectl --kubeconfig=filename.yaml get pods
kubectl -n kube-system delete configmap/kube-dns
kubectl -n kube-system delete configmap/kube-dns-autoscaler
kubectl -n kube-system scale deployment kube-dns-autoscaler --replicas=0
kubectl -n kube-system scale deployment kube-dns-autoscaler --replicas=1
kubectl cluster-info
kubectl cluster-info --context docker-desktop
kubectl cluster-info --context kind-kind
kubectl cluster-info --context kind-kind dump
kubectl config --help
kubectl config view
kubectl config view --minify --raw --output 'jsonpath={..cluster.certificate-authority-data}'
kubectl create -f https://ankitpati.in/example.yaml
kubectl delete ns istio-system
kubectl exec -it pod-name -c container-name -- bash
kubectl get deploy -n istio-system
kubectl get deployments
kubectl get mutatingwebhookconfigurations
kubectl get namespaces
kubectl get node
kubectl get node -o wide
kubectl get nodes
kubectl get pods
kubectl get pods --context=kube-context
kubectl get pods -A
kubectl get svc -A
kubectl logs -f pod-name
kubectl options
kubectl port-forward pod-name 8080:8000
kubectl port-forward service/service-name 12345
kubectl rollout restart deployment -n default
kubectl version
landscape --help
latest-version asar
latest-version spectron
launchctl list
launchctl load /System/Library/LaunchDaemons/ssh.plist
launchctl setenv SOME_ENV_VAR 'Some Value'
launchctl unload /System/Library/LaunchDaemons/ssh.plist
launchctl unsetenv SOME_ENV_VAR
limitcpu
litecli ~/Library/Containers/org.p0deje.Maccy/Data/Library/Application\ Support/Maccy/Storage.sqlite
ln -s "$(brew --prefix)/opt/openssl@1.1/" "$(brew --prefix)/opt/openssl"
ln -s /usr/bin/{ar,ranlib} ~/bin/ && pyenv install 2.7.18; rm ~/bin/{ar,ranlib}
ln -sf /usr/lib/systemd/resolv.conf /etc/resolv.conf
ln -sfn "$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk.jdk
locate --statistics
loginctl list-sessions
loginctl show-session
loginctl show-session 2 -p Type
logname
lpass --help
lpass edit --password unique_name
lpass login contact@ankitpati.in
lpass ls
lpass show --field='Public Key' unique_name
lpass show --password docker_personal_access_token | docker login -u "$(lpass show --username docker_personal_access_token)" --password-stdin
lpass show --password perforce | p4 login
lpass show --password unique_name
lpass show --sync=now --all unique_name
lpass show --username unique_name
lpass show unique_name
ls "$(brew --prefix)/bin/g"* | rev | cut -d/ -f1 | rev | cut -dg -f2- | xargs -r command -v 2>/dev/null | grep -v "^$(brew --prefix)/" | rev | cut -d/ -f1 | rev | while read -r binary; do echo "$(brew --prefix)/bin/g$binary"; done | xargs -r ls -l | rev | cut -d/ -f4 | rev | sort -u
ls *.json | while read -r jsonfile; do jq -S --indent 4 . < "$jsonfile" | sponge "$jsonfile"; done
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
massren --config editor vim
massren -u
massren -u path/to/directory
mdfind -name '.csv'
mdfind -name 'log4j' | ack -i '(?<!\.)2\..*\.jar$'
meson x --buildtype release --strip -Db_lto=true
minikube config --help
minikube config set driver docker
minikube config set kubernetes-version "$(brew livecheck --json kubernetes-cli | jq -r '.[0].version.latest')"
minikube config set kubernetes-version "$(git ls-remote --sort=v:refname --tags https://github.com/kubernetes/kubernetes.git 'v*^{}' | cut -dv -f2 | cut -d^ -f1 | grep -P '^\d+\.\d+\.\d+$' | tail -n 1)"
minikube config view
minikube delete
minikube help
minikube start
minikube status
modinfo -F version nvidia
mogrify -format jpg ./*.png
mojo version
msfconsole
msfdb stop
mvn --encrypt-master-password 'maven-master-password'
mvn --encrypt-password 'maven-server-password'
mypy --config-file ~/.mypy.ini
namei -l "$(command -v perl6)"
namei -om /bin/perl6
nc -lp 5432
nc -zvv ankitpati.in 443
ncdu
neofetch
networkQuality -v
ng new my-app
ng serve -o
nmap --privileged -sS --send-eth -Pn -n 10.10.10.0/24 -p 22
nmap -n -sn 10.10.10.0/24
nmcli connection down id connectionId
nmcli connection show
nmcli connection show --active
nmcli connection show --configured
nmcli connection show --show-secrets
nmcli connection up id connectionId
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
nslookup ankitpati.in
nslookup ankitpati.in 1.1.1.1
nvidia-smi
objdump -R elf-binary-filename
objdump -S elf-binary-filename
objdump -d elf-binary-filename
objdump -g elf-binary-filename
objdump -r elf-binary-filename
openfortivpn fortigate.ankitpati.in -u ankitpati -p SecretPassword -o 012345
openssl asn1parse -in openssl.key
openssl genpkey -algorithm RSA -aes128 -out openssl.key
openssl genrsa 2048 -out openssl.key
openssl pkcs8 -in openssl.key | openssl pkcs8 -topk8 -v2 aes128 -out openssl.key
openssl pkey -aes128 -in openssl.key -text
openssl req -in request.csr -text -noout -verify
openssl req -new -key openssl.key -out openssl.csr -config openssl.conf
openssl req -x509 -days 36500 -new -key id_rsa -out id_rsa.x509
openssl rsa -in openssl.key -pubout -out openssl.pub
openssl rsa -in openssl.key -text -noout
openssl s_client -tls1_3 -auth_level 2 -connect 172.67.192.178:443 -servername ankitpati.in -verify_hostname ankitpati.in -verify_return_error
openssl verify -CAfile fullchain.pem cert.pem
openssl x509 -in ankitpati.pem -text
openssl x509 -in ankitpati.pem -text -noout
openssl x509 -text -noout # paste base64 block into stdin
optipng -o7 filename.png
osascript -e 'id of app "VSCodium"'
ovsx create-namespace ankitpati --pat SecretPersonalAccessToken
ovsx publish --pat SecretPersonalAccessToken
p4 changes -c client-name -l
p4 changes -l
p4 changes -u username
p4 changes ...
p4 clean -n
p4 clean -n -a
p4 clean -n -d
p4 clean -n -e
p4 clean -n -m
p4 clean -n ...
p4 clean -n //depot/...
p4 client
p4 client -o
p4 describe -a 12345 | less
p4 describe -du5 12345 | delta
p4 describe 12345
p4 diff -du5 '@=12345' | delta
p4 diff -du5 -Od -f //depot/directory/... | delta
p4 diff -du5 -f //depot/directory/... | delta
p4 diff -du5 -f directory/filename.pl | delta
p4 diff -se //depot/directory/... | vipe | xargs p4 reconcile -n
p4 dirs -H //depot/\*
p4 dirs //depot/\*
p4 dirs //depot/t\*
p4 filelog path/to/filename.pl
p4 files ...file\*.pl
p4 files //.../file*.pl
p4 files //.../filename.pl
p4 files //depot/.../\*.pl
p4 files //depot/.../filename.pl
p4 files //depot/...file\*.pl
p4 grep -F -e expression //depot/...
p4 grep -l -s -F -e expression //depot/... | cut -d# -f1 | xargs -o vim
p4 groups
p4 groups username
p4 help sizes
p4 info
p4 login
p4 login -as
p4 monitor show
p4 monitor terminate 12345
p4 opened
p4 passwd -O "$(lpass show --password perforce)" -P "$(pwgen 20 1 | tee new_p4_pass)" && lpass edit --non-interactive --password perforce < new_p4_pass && rm new_p4_pass
p4 reconcile //depot/...
p4 revert -n //depot/directory/...
p4 revert -n filename.pl
p4 set
p4 shelve -c 12345 -d
p4 shelve //depot/...
p4 sizes -sh //depot/directory/...
p4 status
p4 submit -c 12345
p4 sync //depot/directory/...
p4 sync //depot/directory/...#none
p4 sync //depot/directory/filename
p4 trust
p4 where . | cut -d' ' -f1
p4 where directory
p4 where filename
package-cleanup
package-cleanup --dupes
package-cleanup --leaves
package-cleanup --orphans
package-cleanup --problems
pactl info
pactl list sinks
parallel reduce-to-registrable < urls.txt | sort -u > registrable-domains.txt
passwd postgres
paste <(echo a quick brown fox jumps over a lazy dog | sed -E 's/\s+/\n/g') <(echo article adverb adjective noun verb preposition article adjective noun | sed -E 's/\s+/\n/g')
patch filename.c filename.c.patch
pavumeter --record
pbcopy < ~/.ssh/id_ed25519.pub
pdfimages -all filename.pdf ./
pdfimages -j filename.pdf ./
pdfimages filename.pdf ./
perl -0pE '$_ = "[" . join(",", /\{.*?}/gms) . "]"' < file-with-JSON-scattered-between-other-data.txt | jq '.[] | "\(.firstname) \(.lastname)"'
perl -0pE 's/^(resource "google_kms_crypto_key" "example-key" {.*?^)(\s+lifecycle {.*?})/"$1".($2 =~ s{^}{#}rsmg)/esm' -i google-kms.tf
perl -MModern::Perl=2020 -dE 0
perl -MModule::CoreList -E 'say Module::CoreList->first_release(q{File::Path})'
perl -MModule::CoreList -E 'say foreach Module::CoreList->find_modules'
perl -MModule::CoreList -E 'say foreach Module::CoreList->find_modules(qr/path/i)'
perl -dE 0
perl -pi -E 'chomp if eof' filename.txt
perlbrew list-modules
perlbrew upgrade-perl
perldoc -U -f split
perldoc -U File::Basename
perldoc -f foreach
perldoc -f split
perldoc File::Basename
perldoc perlsyn
perltidy --pro='.perltidyrc' filename.pl
perltidy filename.pl
pgrep -x chrome
pidof -s chrome
pidof chrome
ping -s 1500 ankitpati.in
pip install --upgrade 'pip < 21'
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
pip install pytz
pip install requests
pip install safety
pip install scipy
pip install shap
pip install slip
pip install tables
pip install voila
pip install wheel
pip install wxPython
pip install xgboost
pkill -9 -x chrome
pkill -s SIGKILL -x chrome
pkill -x chrome
pkmon
plackup -L Shotgun filename.psgi
plackup -r filename.psgi
plackup filename.psgi
plantuml -theme black-knight filename.uml && timg filename.png
plantuml -tsvg filename.uml
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
popd +0
popd +1
popd +4
popd -0
popd -1
popd -4
potrace filename.png
prettier -w filename.css
prettier -w filename.html
prettier -w filename.js
prettyping google.com
ps -eo pid,args | grep -i command_substring
psql service=foiegras
psql service=service_name
pup 'css-selector' < filename.html
pup --color < filename.html
pushd +0
pushd +1
pushd +4
pushd -0
pushd -1
pushd -4
pushd path/to/directory/
pyenv global
pyenv global system 2.7.18
pyenv install -l
pyenv install 2.7.18
pyenv local
pyenv local --unset
pyenv local 2.7.18
pyenv version
pyenv versions
pylint --py3k path/to/python/file.py
pyment -w path/to/python/file.py
python -m pdb <(echo 'import sys; print(sys.path);')
python -m pdb <(echo)
python -m pdb filename.py
python -m timeit '"-".join(str(n) for n in range(100))'
python -m venv .venv
qemu-img convert filename.vmdk filename.qcow2
raku -E 'say "hello"'
range2cidr 1.1.1.0-1.1.1.255
readelf -x .rodata elf-binary-filename
rename -n 's/^\d+_\d+_0(\d)_[^a-z]+_(\w+)\.mp4$/$1. $2.mp4/' -- *
resolvectl flush-caches
resolvectl query ankitpati.in
resolvectl status
restorecon -rvn /etc/X11/xorg.conf.d/
rg -F -- '$_ =~ '
rg -L search-string
rg -l search-string
rg -uuu search-string
rlwrap raku
rm -rf /Users/Shared/*Relocated\ Items*/
rm -rf ~/.local/share/containers/ # podman and buildah
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
sensors
seq -w 000 007 | while read -r num; do cat "input$num.txt"; read; cat "output$num.txt"; read; done
sha256sum -c filename-CHECKSUM
shfmt -w -s filename.bash
skaffold help
sloccount .
snap install flutter --classic
snap list
snyk auth
snyk auth "$(lpass show --password snyk_auth_token)"
snyk monitor
softwareupdate -l; brew update; brew upgrade; cpan-outdated --exclude-core -p | xargs -r cpan; gcloud components update; tldr --update; grep -E '^docker run --pull always -it --rm [^- ]+$' ~/.bash_history | cut -d' ' -f7 | sort -u | while read -r docker_image; do docker pull "$docker_image"; done; for codext in $(codium --list-extensions); do codium --install-extension "$codext" --force; done; vim +PlugUpdate
source ./.venv/bin/activate
spctl developer-mode enable-terminal
speedtest
speedtest-cli
sqlformat -k upper -i lower -r --indent_width 4 --indent_columns -s --comma_first True filename.sql
sqlite3 filename.sqlite
sqlite3 ~/Library/Containers/org.p0deje.Maccy/Data/Library/Application\ Support/Maccy/Storage.sqlite 'select group_concat(zvalue, char(10)) from zhistoryitemcontent where zvalue regexp "^[a-z0-9-_@.]+$"' | xargs brew info
sqlite3_analyzer filename.sqlite
src --help
src search 'context:global repo:^github\.com/ankitpati/rpg$ bitcount patternType:literal case:yes'
ss -tulpn
ssh -G ssh.ankitpati.in
ssh -L 8080:/tmp/sockname.sock ssh.ankitpati.in
ssh -o ClearAllForwardings=yes ssh.ankitpati.in
ssh -o IPQoS=none ssh.ankitpati.in
ssh -vvv ssh.ankitpati.in
ssh-copy-id -o PasswordAuthentication=yes ssh.ankitpati.in
ssh-keygen -l -v -f ~/.ssh/id_ed25519
ssh-keygen -l -v -f ~/.ssh/id_ed25519.pub
ssh-keygen -t ed25519
ssh-keygen -y -f ~/.ssh/id_ed25519
sslscan ankitpati.in:443
sslyze ankitpati.in:443
sss_cache -E
stat -c '%w' filename
strace -e open -o programname.strace programname programargs
strace programname 2> programname.strace
sudo bash -c 'apt update; apt-fast dist-upgrade -y; apt autoremove -y; apt clean; snap refresh; flatpak update; pkcon refresh force; pkcon update; fwupdmgr get-updates; fwupdmgr upgrade; chmod 0750 /usr/bin/nmap /usr/sbin/etherape; chown root:wireshark /usr/bin/nmap /usr/sbin/etherape; setcap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/bin/nmap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/sbin/etherape'
sudo bash -c 'dnf upgrade --refresh; snap refresh; flatpak update; pkcon refresh force; pkcon update; fwupdmgr get-updates; fwupdmgr upgrade; chmod 0750 /usr/bin/nmap /usr/sbin/etherape; chown root:wireshark /usr/bin/nmap /usr/sbin/etherape; setcap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/bin/nmap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/sbin/etherape'
sudo bash -c 'rfkill unblock bluetooth; systemctl restart bluetooth.service'
sudo bash -c 'systemctl stop libvirtd.socket; systemctl stop libvirtd.service'
sudo inxi -SMCDG
sudo kubectl port-forward pod-name 80:8080
svg2png filename.svg
systemctl disable --now avahi-daemon.service
systemctl disable --now libvirtd.service
systemctl disable --now mariadb.service
systemctl disable --now pcscd.socket
systemctl disable --now realmd.service
systemctl disable --now sssd.service
systemctl disable --now vboxservice.service
systemctl disable --now ydotool.service
systemctl edit --user --force --full filename.service
systemctl edit --user filename.service
systemctl enable --now sssd-kcm.socket
systemctl list-units --type=service --state=active
systemctl list-units --type=service --state=running
systemd-analyze cat-config systemd/resolved.conf
tail -n +2 brew-deps.csv | cut -d, -f1 | comm -23 - brew-install-list.txt | while read -r brew_formula; do grep "^$brew_formula" brew-deps.csv; done
telnet google.com & telnet_pid="$!" && ( sleep 5; kill "$telnet_pid" ) && fg; unset telnet_pid
terraform apply tfplan
terraform fmt
terraform graph | apdot -Tpng | timg -
terraform graph | apdot -Tsvg > filename.svg
terraform init
terraform init -upgrade
terraform init -verify-plugins=false
terraform plan -destroy -out tfplan
terraform plan -out tfplan
terraform plan -out tfplan -target module.vpc1 -target module.vpc2
terraform plan -out=tfplan -var boolean_var_name=true
terraform refresh
terraform show tfplan -no-color > tfplan-for-diff
terraform show tfplan | landscape
terraform show tfplan | less -R
terraform validate
timedatectl set-timezone Asia/Kolkata
toolbox create
toolbox enter
toolbox list
toolbox reset
toolbox rm --all
toolbox rm fedora-toolbox-34
toolbox rmi --all
traceroute ankitpati.in
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
update-alternatives --set editor "$(command -v vim)"
updatedb
uprecord
uptime
url --decode < gcp_savedViews.json | sed 's/(/{/g;s/)/}/g' | jq . | sponge gcp_savedViews.json
usb-devices
usermod -aG libvirt ankitpati
usermod -aG wireshark ankitpati
vctl images -a
vctl images -d
vctl inspect rockylinux-12ef
vctl kind
vctl ps -a
vctl pull rockylinux
vctl rm -a
vctl rm rockylinux-12ef
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
vipe --suffix pl < filename | perl
vipe < filename | cat
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
vkcube
vmrun getGuestIPAddress ~/Virtual\ Machines.localized/vm_name.vmwarevm/vm_name.vmx
vmrun list
vmrun start ~/Virtual\ Machines.localized/vm_name.vmwarevm/ nogui
voila filename.ipynb
volatility
vulkaninfo
wappalyzer https://ankitpati.in | jq .
wash -i wlp2s0
watch -n 10 du -sh
watch du -sh
wget https://www.toptal.com/developers/gitignore/api/java,netbeans,eclipse,jetbrains,android,androidstudio -O .gitignore
whatchanged origin/development..
while :; do virsh -c qemu:///system send-key Windows-10 KEY_J; sleep 120; done
while :; do xdotool mousemove --sync 1000 10 sleep 0.5 mousemove restore; sleep 120; done
while read -r directory; do find "$(case "$directory" in -*) printf '%s' ./ ;; esac; printf '%s' "$directory")" \( -type f -exec ls -lt -- {} \; -exec md5sum -- {} \; \) -o \( -type d -exec ls -ltd -- {} \; -exec printf '%s%s' 'directory ' {} \; \); done < directory-list.txt
while read -r gitdir; do ( cd "$gitdir/"; git pull ) done < <(ls)
write ankitpati :1
write ankitpati tty4
xargs -l -o rg < file-with-search-terms.txt
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
xmllint --format filename.xml | sponge filename.xml
xz -v9e filename.tar
yapf -i filename.py
youtube-dl https://www.youtube.com/watch?v=VIDEO_ID -F
youtube-dl https://www.youtube.com/watch?v=VIDEO_ID -f 248
yq -P < filename.yaml
zbarimg filename.jpg > filename.dat
zypper --gpg-auto-import-keys refresh
zypper addrepo --refresh https://download.opensuse.org/repositories/system:/snappy/openSUSE_Tumbleweed snappy
zypper addrepo -fp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
zypper dist-upgrade
zypper dist-upgrade --from packman --allow-vendor-change
zypper modifyrepo --enable repo-debug
zypper packages --orphaned
zypper packages --unneeded
zypper ps
zypper purge-kernels
zypper remove --clean-deps firefox
zypper remove --clean-deps parole
zypper removerepo snappy
zypper update
