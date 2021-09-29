# first line
adb logcat --pid="$(adb shell pidof -s in.ankitpati.gparse | cut -d' ' -f1)"
adb logcat -c && adb logcat > current.log
adb shell pm grant com.oasisfeng.island android.permission.GET_APP_OPS_STATS
adb shell pm list packages
adb uninstall com.markany.aegis.gt
advzip --recompress -4 --iter 1000 filename.zip
aria2c -c -x 16 'https://ankitpati.in/filename.br'
brotli -d filename.br
brotli filename
cargo install cargo-update
cargo install shellharden
codium --install-extension ankitpati.vscodium-amoled --force
codium --install-extension eamodio.gitlens --force
codium --install-extension jock.svg --force
codium --install-extension redhat.java --force
codium --install-extension vscjava.vscode-java-debug --force
codium --install-extension vscodevim.vim --force
codium --list-extensions
convert ./*.jpg output.pdf
cpan-outdated -p | xargs cpanm; echo $?; pip list --outdated --format=freeze | cut -d= -f1 | grep -Ev '^(GDAL|python-poppler-qt5|slip|wxPython)$' | xargs pip install --user -U; echo $?; mypy --install-types; echo $?; cargo install-update -a; echo $?; npm update -g; echo $?; sdk selfupdate; echo $?; sdk update; echo $?; for java_sdk in $(grep '^sdk install ' ~/.bash_history | cut -d' ' -f3 | sort -u); do sdk upgrade "$java_sdk"; done; find ~/.sdkman/ -type f \( -name '*.exe' -o -name '*.bat' \) -delete; vim +PlugUpgrade +PlugUpdate +qa; nvim +PlugUpgrade +PlugUpdate +qa; for codext in $(codium --list-extensions); do codium --install-extension "$codext" --force; done; echo $?; flutter upgrade; echo $?; flutter doctor -v; echo $?; tldr --update; echo $?
cpanm App::cpanoutdated
cpanm Data::Printer
cpanm Future::AsyncAwait
cpanm GraphViz2::Parse::ISA
cpanm IPC::Shareable
cpanm Imager::File::PNG
cpanm Minion
cpanm Module::Signature
cpanm Mojolicious
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
dart --disable-analytics
date +%F
date +%s
date -d@'1619533275'
dconf dump / > dump.dconf
diff HEAD~1 --name-only
difftool branchname -- filename
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
dnf install aircrack-ng
dnf install aireplay-ng
dnf install android-tools
dnf install ant
dnf install apache-ivy
dnf install apostrophe
dnf install ardour5
dnf install aria2
dnf install astyle
dnf install audacity
dnf install awscli
dnf install b43-tools
dnf install bash-completion
dnf install bat
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
dnf install expat-devel
dnf install falkon
dnf install fdupes
dnf install fedy
dnf install ffms2-devel
dnf install fish
dnf install flac
dnf install flameshot
dnf install flex
dnf install flowblade
dnf install fmpp
dnf install foliate
dnf install fonts-tweak-tool
dnf install fragments
dnf install freecad
dnf install freetiger
dnf install freeze
dnf install fritzing
dnf install fuse-sshfs
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
dnf install gnome-extensions-app
dnf install gnome-feeds
dnf install gnome-firmware
dnf install gnome-latex
dnf install gnome-music
dnf install gnome-sharp
dnf install gnome-shell-extension-gpaste
dnf install gnome-shell-extension-gsconnect
dnf install gnome-sound-recorder
dnf install gnome-tweaks
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
dnf install kile
dnf install kitty
dnf install kmod-nvidia
dnf install kmod-wl
dnf install kolourpaint
dnf install konqueror
dnf install konsole
dnf install krename
dnf install krita
dnf install krop
dnf install kruler
dnf install lensfun
dnf install libaom
dnf install libaom-devel
dnf install libcurl-devel
dnf install libdvdcss
dnf install libffi-devel
dnf install librecad
dnf install libreoffice-draw
dnf install librsvg2-devel
dnf install librsvg2-tools
dnf install librsync-devel
dnf install libva-utils
dnf install libva-vdpau-driver
dnf install libvirt
dnf install libvirt-devel
dnf install linode-cli
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
dnf install ncurses-libs.i686
dnf install neofetch
dnf install neovim
dnf install ngspice
dnf install nmap
dnf install nodejs-svgo
dnf install npm
dnf install oathtool
dnf install obs-studio
dnf install ocrmypdf
dnf install octave
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
dnf install powerline-fonts
dnf install procinfo
dnf install psutils
dnf install psutils-perl
dnf install pwgen
dnf install pylint
dnf install pypy
dnf install pypy-devel
dnf install pypy3
dnf install pypy3-devel
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
dnf install qt-avif-image-plugin
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
dnf install toolbox
dnf install transmission
dnf install tweak
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
dnf remove bat
dnf remove broadcom-wl
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
echo $LINES $COLUMNS
echo 'Subject: Hello' | sendmail -v contact@ankitpati.in
errno --list
exec su - ankitpati
exec sudo -u ankitpati -i
exiftool -p '$XResolution,$YResolution' filename.jpg
fallocate -l 100M hundred-MiB-file
fallocate -l 1K one-kb-file
fallocate -l 4M four-MiB-file
fastboot boot twrp.img
fastboot flash recovery twrp.img
fastboot oem get_unlock_data
fastboot oem unlock
fastboot reboot recovery
fc-cache -fv
fdupes -r .
fdupes -rN .
fdupes -rNd .
fdupes .
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
fpaste filename.txt
free -h
fuser -v 8080/tcp
gcc -march=native -Q --help=target
git branch --format='%(refname:short)' | while read -r branch; do git checkout "$branch" || break; git rebase origin/main || break; done
gpg2 --decrypt data.gpg
gpg2 --decrypt data.gpg --output data
gpg2 --edit-key contact@ankitpati.in
gpg2 --encrypt --sign --recipient contact@ankitpati.in filename.br
gpg2 --export -a 'Ankit Pati' > pubkey.asc
gpg2 --export-secret-keys contact@ankitpati.in > privkey.gpg
gpg2 --fingerprint contact@ankitpati.in
gpg2 --gen-key
gpg2 --import filename.asc
gpg2 --keyid-format long --list-keys contact@ankitpati.in
gpg2 --list-keys
gpg2 --list-secret-keys
gpg2 --locate-keys contact@ankitpati.in
gpg2 --recv-keys 'B8BB CEBC BD6C 4BF0 599C 40F9 360A 9642 9F7A 69DC'
gpg2 --verify filename-CHECKSUM && sha256sum -c filename-CHECKSUM
gpg2 --with-fingerprint filename.gpg
gpg2 -c --no-symkey-cache filename.br
gradle
gradle --stop
gsettings set org.gnome.shell.app-switcher current-workspace-only true
guiscrcpy
guiscrcpy config -r
hash -r
hash perl
hdparm --security-unlock SecretPassword /dev/sdb
hdparm --user-master m --security-disable SecretPassword /dev/sdb
hdparm --user-master m --security-unlock SecretPassword /dev/sdb
hdparm --user-master u --security-disable SecretPassword /dev/sdb
hdparm --user-master u --security-unlock SecretPassword /dev/sdb
hdparm -I /dev/sdb
hostnamectl set-hostname boronHostname
html-beautify -f filename.html
http 'https://ankitpati.in/filename.txt'; exec cat
identify -format '%x,%y\n' filename.png
ip a
ip a show enp0s20u3
ip addr
ipcrm shm 262162
ipcs -l
ipcs -m
ipcs -s
journalctl -f -o cat "$(which gnome-shell)"
jq . < filename.json
js-beautify filename.js
jsonlint filename.json
jsonlint-php filename.json
jupyter notebook password
jupyter serverextension enable --py jupyterlab
kate-syntax-highlighter -t 'Vim Dark' filename.pl > filename.html
latest-version asar
latest-version spectron
log --pretty=format:%ae | sort -u | cut -d@ -f2- | sort -u
markdownlint '**/*.md' 2> errors.txt
merge --ff-only branchname
merge-base HEAD branchname
meson x --buildtype release --strip -Db_lto=true
mogrify -format jpg ./*.png
msfconsole
msfdb stop
namei -om /bin/perl6
nmap --privileged -sS --send-eth -Pn -n 10.10.10.0/24 -p 22
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
npm install -g appium
npm install -g asar
npm install -g depcheck
npm install -g ember-cli
npm install -g eslint
npm install -g frida
npm install -g generator-code
npm install -g js-beautify
npm install -g markdownlint-cli
npm install -g npm
npm install -g npm-check-updates
npm install -g ovsx
npm install -g prettier
npm install -g snyk
npm install -g svgo
npm install -g typescript
npm install -g vsce
npm install -g wappalyzer
npm install -g yo
npx asar
nvidia-smi
openfortivpn fortigate.ankitpati.in -u ankitpati -p SecretPassword -o 012345
optipng -o7 filename.png
ovsx create-namespace ankitpati --pat SecretPersonalAccessToken
ovsx publish --pat SecretPersonalAccessToken
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
perlbrew list-modules
perlbrew upgrade-perl
pip install cx_Oracle
pip install data-science-types
pip install frida
pip install frida-tools
pip install guiscrcpy
pip install gunicorn
pip install imblearn
pip install jupyterlab
pip install meson
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
pkmon
potrace filename.png
prettier -w filename.css
prettier -w filename.html
prettier -w filename.js
qemu-img convert filename.vmdk filename.qcow2
resolvectl query ankitpati.in
restorecon -rvn /etc/X11/xorg.conf.d/
rg -- '^(<<<<|====|>>>>)'
rg -F -- '$_ =~ '
rpm2cpio filename.rpm | cpio -idmv
rpmconf -a -f vimdiff
rpmconf -c
scour filename.svg filename-scour.svg -v --no-renderer-workaround --strip-xml-prolog --remove-titles --remove-descriptions --remove-metadata --remove-descriptive-elements --enable-comment-stripping --disable-embed-rasters --enable-viewboxing --indent=none --no-line-breaks --strip-xml-space --enable-id-stripping --shorten-ids
scrcpy --force-adb-forward -b 1000
scrcpy -b 1000
sdk install btrace
sdk install gradle
sdk install groovy
sdk install kotlin
sdk install maven
sdk install sbt
sdk install visualvm
show --format= --name-only
snap install flutter --classic
sqlformat -k upper -i lower -r --indent_width 4 --indent_columns -s --comma_first True filename.sql
ss -tulpn
ssh -L 8080:/tmp/sockname.sock ssh.ankitpati.in
ssh -o ClearAllForwardings=yes ssh.ankitpati.in
ssh-copy-id -o PasswordAuthentication=yes ssh.ankitpati.in
strace -e open programname programargs
strace programname 2> programname.strace
sudo bash -c 'dnf upgrade --refresh; snap refresh; flatpak update; pkcon refresh force; pkcon update; fwupdmgr get-updates; fwupdmgr upgrade; chmod 750 /usr/bin/nmap /usr/sbin/etherape; chown root:wireshark /usr/bin/nmap /usr/sbin/etherape; setcap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/bin/nmap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/sbin/etherape'
sudo bash -c 'rfkill unblock bluetooth; systemctl restart bluetooth.service'
sudo bash -c 'systemctl stop libvirtd.socket; systemctl stop libvirtd.service'
systemctl list-units --type=service --state=active
systemctl list-units --type=service --state=running
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
uname -a
uname -r
update-alternatives --config java
update-alternatives --config javac
update-alternatives --set editor /bin/vim
updatedb
usermod -aG libvirt ankitpati
usermod -aG wireshark ankitpati
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
wappalyzer https://ankitpati.in | jq .
whatchanged origin/development..
while :; do virsh -c qemu:///system send-key Windows-10 KEY_J; sleep 120; done
while :; do xdotool mousemove --sync 1000 10 sleep 0.5 mousemove restore; sleep 120; done
while read -r directory; do find "$(case "$directory" in -*) printf '%s' ./ ;; esac; printf '%s' "$directory")" \( -type f -exec ls -lt -- {} \; -exec md5sum -- {} \; \) -o \( -type d -exec ls -ltd -- {} \; -exec printf '%s%s' 'directory ' {} \; \); done < directory-list.txt
write ankitpati :1
write ankitpati tty4
xclip < ~/.ssh/id_rsa.pub
xz -v9e filename.tar
yapf filename.py | sponge bmark.py
zbarimg filename.jpg
