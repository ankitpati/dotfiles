#!/usr/bin/env bash
( CHANGELIST=12345; p4 describe "$CHANGELIST" | grep -v ' delete$' | sed '0,/^Affected files /d' | tail --lines=+2 | head --lines=-1 | cut --delimiter='#' --fields=1 | cut --delimiter='/' --fields=6- | tar --append --file="p4-cl-$CHANGELIST.tar" --verbatim-files-from --files-from=- )
( GH_ORIGIN='origin'; PULL_REQUEST_ID='12345'; BRANCH_NAME='foo-bar'; git fetch "$GH_ORIGIN" "pull/$PULL_REQUEST_ID/head:$BRANCH_NAME" && git checkout "$BRANCH_NAME" )
( GH_ORIGIN='origin'; PULL_REQUEST_ID='12345'; git fetch "$GH_ORIGIN" "pull/$PULL_REQUEST_ID/head" )
( GH_ORIGIN='origin'; PULL_REQUEST_ID='12345'; git pull "$GH_ORIGIN" "pull/$PULL_REQUEST_ID/head" )
( GH_USERNAME='ankitpati'; age -r "$(curl --header "Authorization: token $(op read op://Private/github_personal_access_token/password)" "https://github.example.org/api/v3/users/$GH_USERNAME/keys" | jq --raw-output .[0].key)" --output cipher.txt.age plain.txt )
( filename=depot/directory/filename; p4 sync "$filename#$(( "$(p4 have "$filename" | cut -d# -f2 | cut -d' ' -f1)" - 1 ))" )
( find . -type f -iname '*.py' ; grep --ignore-case --files-with-matches --extended-regexp '/(env )?python' --recursive . 2>/dev/null ) | sort --unique | xargs --open-tty vim
( hostname='google.com'; openssl s_client -auth_level 2 -connect "$hostname":443 -servername "$hostname" -verify_hostname "$hostname" -verify_return_error )
( hostname='google.com'; openssl s_client -tls1_3 -auth_level 2 -connect "$hostname":443 -servername "$hostname" -verify_hostname "$hostname" -verify_return_error )
( perforce_dir=//depot/directory; p4 dirs "$perforce_dir/*" | while read -r perforce_subdir; do p4 grep -e 'search-expression' "$perforce_subdir/..."; done )
( perforce_dir=//depot/directory; p4 dirs "$perforce_dir/*"; p4 sizes -sh "$perforce_dir/..." )
( ssh_private_key_file=id_ed25519; ssh-keygen -l -v -f "$ssh_private_key_file" && ssh-keygen -y -f "$ssh_private_key_file" && cat "$ssh_private_key_file" )
( unalias -a; comm -12 <(hash -r; ls {,/usr}/{,s}bin/ | xargs command -V 2>/dev/null | grep -Ev " is ($(brew --prefix)/|a shell (builtin|keyword))" | cut -d' ' -f1 | sort -u) <(ls "$(brew --repo)/Library/Taps/homebrew/homebrew-core/Formula/" | rev | cut -d. -f2- | rev | sort -u) )
./manage.py check auth admin forum
./manage.py dbshell
./manage.py makemigrations
./manage.py migrate
./manage.py runserver 0:8000
./manage.py shell
./manage.py showmigrations
./manage.py sqlmigrate
./manage.py startapp
/bin/ls -l@
/usr/libexec/java_home
/usr/libexec/java_home --verbose
/usr/libexec/java_home --version=1.8
CLASSPATH=. java ClassName
GIT_COMMITTER_NAME='Ankit Pati' GIT_COMMITTER_EMAIL='contact@ankitpati.in' git rebase branchname --exec 'git commit --amend --author="Ankit Pati <contact@ankitpati.in>" --no-edit --no-gpg-sign'
HTTPS_PROXY="$(jq --raw-output '.proxies."https-proxy"' < ~/.docker/daemon.json)" NO_PROXY="$(jq --raw-output '.proxies."no-proxy"' < ~/.docker/daemon.json)" skopeo sync --dry-run --override-arch amd64 --override-os linux --src docker --dest docker docker.io/library/busybox gcr.io/project_id/namespace/
HTTPS_PROXY="$(jq --raw-output '.proxies."https-proxy"' < ~/.docker/daemon.json)" NO_PROXY="$(jq --raw-output '.proxies."no-proxy"' < ~/.docker/daemon.json)" skopeo sync --dry-run --override-arch amd64 --override-os linux --src docker --dest docker docker.io/library/busybox:latest gcr.io/project_id/namespace/
LESS='-I' git log --graph --pretty=fuller --show-signature
P4DIFF=vimdiff p4 diff -Od -f //depot/directory/...
P4DIFF=vimdiff p4 diff -f //depot/directory/...
P4DIFF=vimdiff p4 diff -f //depot/directory/filename
PATH="$(grep --invert-match binutils <<<"${PATH//:/$'\n'}" | paste --delimiters=':' --serial)" cpan Unicode::GCString
TF_LOG=debug terraform plan -out tfplan
TZ= date
Xvfb :99 -screen 0 1024x768x24
\ssh ssh.ankitpati.in
aa-status
ack '(?<=^B: ).*$'
adb logcat --pid="$(adb shell pidof -s in.ankitpati.gparse | cut -d' ' -f1)"
adb logcat -c && adb logcat > current.log
adb shell pm grant com.oasisfeng.island android.permission.GET_APP_OPS_STATS
adb shell pm list packages
adb uninstall com.markany.aegis.gt
add-apt-repository multiverse
add-apt-repository universe
advzip --recompress -4 --iter 1000 filename.zip
age -R ~/.ssh/authorized_keys -o cipher.txt.age plain.txt
age -d -i ~/.ssh/id_ed25519 -o plain.txt cipher.txt.age
age-keygen -o ~/.age/key.txt
alternatives --config java
alternatives --config javac
alternatives --config jre_openjdk
alternatives --list
alternatives --set editor "$(command -v vim)"
apdot filename.dot -Tpng | timg -
apktool d filename.apk
apt -o APT::Get::Always-Include-Phased-Updates=true full-upgrade
apt install iat
apt install python3-apt/kinetic # used to fix unavailable packages after Ubuntu `do-release-upgrade` to Kinetic Kudu
apt purge -y mysql-\* && apt autoremove -y && rm -rf /etc/mysql/ /var/lib/mysql/
apt-cache policy snapd
apt-cache rdepends python-apt-common
apt-mark auto ubuntu-restricted-addons
apt-mark showmanual
argo list --namespace=namespace_name
argo logs cron-job-workflow_name
argo submit --dry-run --from=CronWorkflow/cron-job-workflow_name --output=yaml
argo submit --log --from=CronWorkflow/cron-job-workflow_name
argo submit --output=yaml --from=CronWorkflow/cron-job-workflow_name
argo submit --watch --from=CronWorkflow/cron-job-workflow_name
aria2c -c -x 16 https://ankitpati.in/filename.br
arkade get --format=markdown
arkade get krew
arkade info inlets-operator
arkade install --print-table
arkade install istio
banner Type your message here.
base64 --wrap=0 filename
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
bazel run //:target
bazel shutdown
below
below replay --time '5 minutes ago'
bind -P
brew --prefix
brew --repo
brew --repo snyk/tap
brew analytics off
brew autoremove -n
brew bundle check
brew bundle cleanup
brew bundle dump --force
brew config
brew deps --direct google-java-format
brew deps --topological google-java-format
brew deps --tree google-java-format
brew developer --verbose state
brew developer on
brew doctor --debug --verbose
brew help --prefix
brew help developer
brew info --json=v2 --cask visual-studio-code | jq .
brew leaves --installed-as-dependency
brew leaves --installed-on-request
brew leaves | grep -Ev '^(bash-completion@2|flyctl|gcc|git-delta|kind|terraform)$' | xargs --open-tty brew uninstall
brew linkage
brew list --casks
brew livecheck --debug kubernetes-cli
brew livecheck kubernetes-cli
brew missing
brew search --fedora perl-Mojolicious
brew search --ubuntu libmojolicious-perl
brew services info --all
brew shellenv
brew unlink docker && brew link --overwrite docker
brew untap homebrew/cask
brew untap homebrew/core
brew uses curl
brew uses curl --installed
brew which-formula --explain aria2c
brew which-formula aria2c
brew which-formula sponge
brew-list-deps
brotli -d filename.br
brotli filename
browserslist 'last 1 Chrome versions'
btrfs subvolume list /data
cat ./*.tf | vipe --suffix=tf >/dev/null
cat <(curl https://truststore.pki.rds.amazonaws.com/global/global-bundle.pem) <(curl https://truststore.pki.us-gov-west-1.rds.amazonaws.com/global/global-bundle.pem) > ~/.postgresql/root.crt
ccd2iso disk-image.bin disk-image.iso
checkstyle -c /google_checks.xml Filename.java
checkstyle -c /sun_checks.xml Filename.java
chsh -s "$(brew --prefix)/bin/bash"
ciphey -f filename.txt
ciphey -gf filename.txt | grep hello
code --install-extension ./filename.vsix
code --list-extensions
code --locate-shell-integration-path bash
code --uninstall-extension yzane.markdown-pdf --force
code tunnel --accept-server-license-terms
comm -23 <(grep -P '^brew install (?!--cask )' ~/Code/Dotfiles/src/.bash_history | cut -d' ' -f3) <(brew leaves --installed-on-request)
command -V command
command -v gnome-shell
command ssh ssh.ankitpati.in
convert -density 300 filename.pdf filename-%d.png
convert -density 300 filename.pdf filename-reduced.pdf
convert ./*.jpg output.pdf
copyq info
cpan-outdated -p | xargs cpanm; echo $?; pip list --outdated --format=freeze | cut -d= -f1 | grep -Ev '^(GDAL|python-poppler-qt5|slip|wxPython)$' | xargs pip install --user -U; echo $?; mypy --install-types; echo $?; cargo install-update -a; echo $?; npm update -g; echo $?; sdk selfupdate; echo $?; sdk update; echo $?; for java_sdk in $(grep '^sdk install ' ~/.bash_history | cut -d' ' -f3 | sort -u); do sdk upgrade "$java_sdk"; done; find ~/.sdkman/ -type f \( -name '*.exe' -o -name '*.bat' \) -delete; vim +PlugUpgrade +PlugUpdate +qa; nvim +PlugUpgrade +PlugUpdate +qa; for codext in $(code --list-extensions); do code --install-extension "$codext" --force; done; echo $?; flutter upgrade; echo $?; flutter doctor -v; echo $?; gcloud components update; echo $?; steampipe plugin update --all; echo $?; tldr --update; echo $?
cpio -idv < filename.cpio
crane catalog docker.io
crane ls quay.io/ankitpati/tigress
crane manifest quay.io/ankitpati/tigress | jq .
crontab -e
csv -f protocol,root_domain,status < nextdns-log.csv | tail --lines=+2 | grep -v ',blocked$' | rev | cut -d, -f2- | rev | sort -u > nextdns-domain-list.csv
csvprintf '%1$s\n' < filename.csv | wc -l
csvprintf -n '%1$s %2$s %3$s\n' < filename.csv
csvq 'select username from lpass_export where username like "prefix_%"'
cue eval fields.cue
cue export --out json filename.cue
cue export --out yaml filename.cue
cue fmt filename.cue
curl 'https://example.org/untrustworthy.dat'; exec cat
curl --connect-to example.org:80:localhost:8080 http://example.org
curl --data '{"commit":"6879efc2c1596d11a6a6ad296f80063b558d5e0f"}' https://api.osv.dev/v1/query | jq .
curl --data '{"version":"2.4.1","package":{"name":"jinja2","ecosystem":"PyPI"}}' https://api.osv.dev/v1/query | jq .
curl --head --header 'Accept: application/json, */*' --output /dev/null --silent --write-out 'scale = 3; (%{size_header} + %{size_download}) / %{size_request}\n' 'https://example.org' | bc
curl --head https://example.org/filename
curl --header "Authorization: token $(op read op://Private/github_personal_access_token/password)" --remote-name https://github.example.org/raw/namespace/repo_name/branch_name/path/to/filename
curl --header "Authorization: token $(op read op://Private/github_personal_access_token/password)" --remote-name https://raw.githubusercontent.com/namespace/repo_name/branch_name/path/to/filename
curl --header 'Accept: application/json, */*' --output /dev/null --silent --write-out 'scale = 3; (%{size_header} + %{size_download}) / %{size_request}\n' 'https://example.org' | bc
curl --header 'Authorization: Bearer QQ==' --output blob 'https://ghcr.io/v2/path/to/project/blobs/sha256:0123456789abcdef0123456789abcdef0123456789abcdef0123456789abcdef'
curl --key openssl.key --cert openssl.crt https://mtls.example.org
curl --netrc https://github.example.org/api/v3/user
curl --proxytunnel --proxy https://squid.ankitpati.in:1080 https://ankitpati.in
curl --remote-name https://ankitpati.in/download?file=filename.c
curl --resolve example.org:80:127.0.0.1 http://example.org
curl --silent --header "Authorization: Bearer $(gcloud auth application-default print-access-token)" 'https://www.googleapis.com/compute/v1/projects/project_id/zones/us-west1-a/instanceGroups/k8s-ig--0000000000000000' | jq .
curl --silent --include https://example.org | head --lines=1 | cut -d' ' -f2
curl --verbose --location 'https://example.org/12345' 2>&1 | dos2unix | grep --only-matching --perl-regexp '(?<=^< location: ).*$' | grep --colour 12345
curl --write-out '\n%{time_total} - %{time_starttransfer}\n' https://httpbin.org/get | tail --lines=1 | bc
curl http://localhost:8001 | jq --raw-output '.["paths"][]' | while read -r k8s_api_endpoint; do printf '\n## `%s`\n\n```json\n%s\n```\n' "$k8s_api_endpoint" "$(curl "http://localhost:8001$k8s_api_endpoint")"; done > kubernetes_api_record.md
curl https://ankitpati.in/gpg.asc --output /etc/apt/trusted.gpg.d/ankitpati.asc
curl https://apt.ankitpati.in/ankitpati.list --output /etc/apt/sources.list.d/ankitpati.list
curl https://github.com/web-flow.gpg | gpg --import
curl https://gitlab.com/api/v4/users/ankitpati/projects | jq --raw-output --arg random_index $((RANDOM % 13)) '.[$random_index | tonumber]'
curl https://ident.me; echo; exec cat
cut -f2,3 /proc/net/route | grep ^00000000 | cut -f2 | sed 's/../0x&\n/g' | tac | xargs printf '%u.%u.%u.%u\n'
dart --disable-analytics
date +%F
date +%s
date --utc
date --utc --date "@$((1601234567890 / 1000))" +%Y%m%d
date -Is
date -d 'Wed Dec 13 05:43:21 GMT 1995'
date -d@1619533275
dconf dump / > dump.dconf
dd if=/dev/urandom count=1 2>/dev/null | git hash-object --stdin
deactivate
declare -p | grep '^declare -- '
defaults read com.apple.DictionaryServices DCSActiveDictionaries
defaults write com.apple.Terminal ApplePressAndHoldEnabled -bool false
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome ApplePressAndHoldEnabled -bool false
defaults write com.googlecode.iterm2 ApplePressAndHoldEnabled -bool false
defaults write com.jetbrains.intellij ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.VSCode ApplePressAndHoldEnabled -bool false
defaults write com.microsoft.edgemac AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.visualstudio.code.oss ApplePressAndHoldEnabled -bool false
defaults write com.vivaldi.Vivaldi AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.vivaldi.Vivaldi ApplePressAndHoldEnabled -bool false
df -h
df -i
diff -u5 -r directory1/ directory2/ | delta
diff -x '*.asc' -x '*.lock.hcl' -x '*.tfstate' -x '.terraform' -x 'tfplan' -u5 -r terraform_directory1/ terraform_directory2/ | delta
dig -t ANY google.com
dig -x 172.30.83.9
dig -x ankitpati.in
dig ankitpati.in
dig ankitpati.in @1.1.1.1
dirs -c
dirs -v
django-admin startproject forum
dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/x86_64/
dnf copr enable kwizart/fedy
dnf copr enable zeno/scrcpy
dnf groupupdate core
dnf groupupdate multimedia
dnf groupupdate sound-and-video
dnf list extras
dnf needs-restarting
dnf repolist all
dnf repoquery --duplicates
dnf repoquery --extras
dnf repoquery --extras --exclude=kernel,kernel-\*
dnf repoquery --unsatisfied
dnf repoquery --userinstalled
dnf system-upgrade download --refresh --releasever=36
dnf system-upgrade reboot
dnslookup ankitpati.in 1.1.1.1
dnslookup ankitpati.in https://1.1.1.1/dns-query
dnslookup ankitpati.in https://one.one.one.one/dns-query
dnslookup ankitpati.in tls://1.1.1.1
dnslookup ankitpati.in tls://one.one.one.one
dnstracer -s . ankitpati.in
dnstracer ankitpati.in
do-release-upgrade
docker build --progress=plain --tag=image_name .
docker buildx build --platform=linux/amd64,linux/arm64 --output=type=oci,dest=/path/to/filename.tar .
docker buildx build --platform=linux/amd64,linux/arm64 --output=type=tar,dest=/path/to/filename.tar .
docker buildx build --platform=linux/amd64,linux/arm64 --tag=image_name:tag_name --output=type=image,push=false .
docker buildx build --platform=linux/amd64,linux/arm64 --tag=image_name:tag_name --output=type=registry .
docker buildx build --platform=linux/arm64 --output=type=docker,dest=/path/to/filename.tar .
docker buildx create --name=builder_name --driver=docker-container --config=buildkitd.toml --use
docker buildx inspect --bootstrap
docker buildx ls
docker buildx rm builder_name
docker network list --quiet | xargs --no-run-if-empty docker network inspect --verbose
docker run --interactive --pid=host --privileged --pull=always --rm --tty busybox nsenter --ipc --mount --net --target=1 --uts # Linuxkit access on Docker for Mac
docker scan --accept-license --version
docker scan --login --token="$(op read op://Private/snyk_auth_token/password)"
docker scan image_name
docker-compose build
docker-compose stop
docker-compose up
docker-credential-gcloud get <<<gcr.io | jq .
dockviz images -d | apdot | timg -
dockviz images -d | patchwork | apdot | timg -
dockviz images -t
drill -x 1.1.1.1
drill ankitpati.in
ecoji -e <<<'hello, world' | ecoji -d
ember build
ember build --environment=production
ember clean
ember generate component component_name
ember generate route route_name
ember generate template template_name
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
export DISPLAY=':99.0'
export GH_TOKEN="$(op read op://Private/github_personal_access_token/password)"
export GITHUB_PERSONAL_ACCESS_TOKEN="$(op read op://Private/github_personal_access_token/password)"
export JAVA_HOME="$(/usr/libexec/java_home --failfast --version=11)"
export KUBECONFIG='kubeconfig.yaml'
export P4CLIENT="$(p4 clients -u "$(p4 client -o | grep '^Owner:' | cut -f2)" | cut -d' ' -f1-5 | grep " /client/root\$" | cut -d' ' -f2)"
export SRC_ACCESS_TOKEN="$(op read op://Private/sourcegraph_access_token/password)"
eza --all --classify --git --group-directories-first --header --icons --inode --long
eza --tree
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
fd -td -te -p ~/Perforce/ -X rm -rf \; -X echo
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
find "$HOME/.local/share/gem/ruby" -mindepth 1 -maxdepth 1 -type d | sort -V
find . -exec sha256sum {} + 2>/dev/null | cut -d' ' -f1 | paste -sd' ' | sed 's/ //g' | perl -pi -E 'chomp if eof' | sha256sum
find . -maxdepth 1 -print0 | xargs --null --max-args 1 du --human-readable --summarize | sort --human-numeric-sort
find . -maxdepth 1 -type d -mtime 0
find . -maxdepth 1 -type d -mtime 2
find . -not -group ankitpati
find . -not -user ankitpati
find . -type d -empty -delete
find . -type d -name .git -printf '%h\n' | while read -r directory; do cd "$directory"; pwd; git-ssh2https; cd - &>/dev/null; done
find . -type f -exec chmod 0600 {} + -exec dos2unix {} +
find . -type f -exec mv -t /directory/ {} +
find . -type f -exec perl -pi -E 's{#!\s*(?:/usr)?/bin/(?!env\b)(\S+)([ \t]*(?=\S))}{#!/usr/bin/env ${\($2 ? "-S " : "")}$1$2}' {} +
find . -type f -name '*.expanded-csr' -exec openssl req -noout -text -in {} \; | grep -E '^\s+DNS:' | sed 's/, /\n/g' | cut -d: -f2- | sort -u | paste -sd,
find . -type f -name '*.lastUpdated' -delete
find . -type f -name 'filename_with_ip_addresses' -exec grep --perl-regexp --only-matching --no-filename '(?:[0-9]+\.){3}[0-9]+/[0-9]+' {} + | sort --unique | while read -r subnet; do subnetcalc "$subnet" -n; done
find . -type f -name requirements.txt -exec pip install -r {} \;
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
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak uninstall --unused
flatpak uninstall org.freedesktop.Platform.GL.nvidia-465-24-02
flutter config --no-analytics
flutter doctor -v
fly auth signup
for i in {0..127}; do printf '%u' "$i" | pbcopy; sleep 1; done
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
gcloud auth print-access-token | docker login gcr.io --username=oauth2accesstoken --password-stdin
gcloud cloud-shell scp localhost:path/to/filename cloudshell:~/
gcloud cloud-shell ssh
gcloud components install gke-gcloud-auth-plugin
gcloud components list
gcloud components repositories list
gcloud compute addresses list --project=project_id --filter='name:gce_vm_name' --format='table(name,address)'
gcloud compute backend-services list --filter=name="($(gcloud compute forwarding-rules list --filter=IPAddress='(10.10.10.10)' --format=json'(name)' | jq --raw-output .[0].name))" --format=json'(backends)' | jq .[0].backends[]
gcloud compute images list
gcloud compute images list --project=project_id --format='value(name)'
gcloud compute instances delete gce_vm_name --quiet --project=project_id --zone="$(gcloud compute instances list --project=project_id --filter='name <= gce_vm_name AND name >= gce_vm_name' --format='value(zone.basename())')"
gcloud compute instances describe --project=project_id --zone=us-west1-a instance_name | yq '. | to_json' | json-recursive-decode | jq .
gcloud compute instances list --project=project_id --format='csv(name,zone,networkInterfaces[0].networkIP)' | grep --fixed-strings 10.10.10.10
gcloud compute instances list --project=project_id --format='json(name,zone,networkInterfaces[0].networkIP)' | grep --fixed-strings 10.10.10.10
gcloud compute instances list --project=project_id --format='table(name,zone,networkInterfaces[0].networkIP)' | grep --fixed-strings 10.10.10.10 | tr --squeeze-repeats ' '
gcloud compute instances list --project=project_id --zones=us-west1-a,us-west1-b,us-west1-c --limit=5 --filter='name~instance_name' --format=json
gcloud compute instances reset --project=project_id --zone=us-west1-a instance_name
gcloud compute instances start --zone=us-west1-a instance_name
gcloud compute instances stop --zone=us-west1-a instance_name
gcloud compute networks list
gcloud compute networks subnets describe --project=project_id --region=us-west1 subnet_name | yq .
gcloud compute project-info describe --project=project_id
gcloud compute regions describe us-west1 --project=project_id | yq .
gcloud compute ssh --zone=us-west1-a --internal-ip instance_name
gcloud compute ssh gke_node_name --project=project_id --zone=us-west1-a --troubleshoot --tunnel-through-iap
gcloud compute zones list
gcloud compute zones list --project=project_id
gcloud config config-helper
gcloud config config-helper --format=json
gcloud config config-helper --format=json | jq --raw-output .credential.id_token | jq --raw-input 'split(".") | .[0],.[1] | @base64d | fromjson'
gcloud config configurations list
gcloud config list
gcloud config set compute/region us-west1
gcloud config set compute/zone us-west1-a
gcloud config set project project_id
gcloud config unset project
gcloud container clusters describe cluster_name --project=project_id --location=us-west1 2>/dev/null | yq .nodeConfig.oauthScopes
gcloud container clusters get-credentials cluster_name --region=us-west1 --project=project_id # appends to ~/.kube/config
gcloud container get-server-config --format='yaml(defaultClusterVersion)'
gcloud functions delete function_name --quiet --project=project_id
gcloud functions list
gcloud info
gcloud projects add-iam-policy-binding project_id --member=user:contact@ankitpati.in --role=roles/compute.instanceAdmin.v1
gcloud projects get-iam-policy project_id
gcloud projects list
gcloud recommender insights list --insight-type=google.container.DiagnosisInsight --location=us-west1 --project=project_id
gcloud storage objects describe gs://bucket-name/path/to/filename
gcloud storage objects update gs://bucket-name/path/to/filename --clear-content-disposition
gcloud storage objects update gs://bucket-name/path/to/filename --content-disposition=inline
gcloud storage objects update gs://bucket-name/path/to/filename --content-type=text/plain
gcloud topic filters
gdb elfname
getcap "$(command -v nmap)"
getfacl "$(command -v nmap)"
getfattr "$(command -v nmap)"
gh config list
gh config set git_protocol ssh
gh issue list
gh pr list
gh pr status
git -C "$(git rev-parse --show-toplevel)" clean -ffdx && git submodule foreach git clean -ffdx
git -C "$(git rev-parse --show-toplevel)" diff HEAD~1 ':^*.asc'
git -C "$(git rev-parse --show-toplevel)" log -p ':^*.asc'
git -C "$(git rev-parse --show-toplevel)" show -p ':^*.asc'
git add -p
git branch --format='%(refname:short)' | while read -r branch; do git checkout "$branch" || break; git rebase origin/main || break; done
git branch -r | grep -E '^\s+origin/' | grep -v HEAD | cut -d/ -f2 | xargs git push ankitpati -d
git branch -vv
git checkout -p
git cherry-pick branchname~2..branchname
git clean -ffdxn
git clone --recurse-submodules https://example.org/repo-with-submodules.git
git commit --allow-empty -m empty
git commit --amend --gpg-sign --no-edit
git config --show-origin credential.helper
git diff HEAD~1 --name-only
git difftool branchname -- filename
git difftool branchname1 branchname2 -- path1/to/filename1 path2/to/filename2
git fetch origin pull/1000/head:local-branchname # for GitHub
git fsck --cache --no-reflogs --lost-found --dangling HEAD
git lfs install
git log --follow -- filename
git log --name-only --format= | uniq | less
git log --pretty=email
git log --pretty=format:%ae | sort -u | cut -d@ -f2- | sort -u
git log -p
git log -p --author='contact@ankitpati.in'
git merge --ff-only branchname
git merge-base HEAD branchname
git p4 clone //depot/directory@all --verbose
git push ssh://github.com/ankitpati/rpg.git local_branch_name:master
git remote -v | sed --regexp-extended 's/ \((fetch|push)\)$//' | sort -u | while read -r remote_name remote_url; do remote_url="$(sed 's,^ssh://git@,ssh://,' <<<"$remote_url")"; git remote set-url "$remote_name" "$remote_url"; done
git remote add origin https://github.com/ankitpati/rpg.git
git restore filename
git show --format= --name-only
git show --pretty= --unified=0 | cat
git show --pretty= --unified=0 | grep --only-matching --extended-regexp '([0-9]+\.){3}[0-9]+/[0-9]+' | while read -r subnet; do subnetcalc "$subnet" -n; printf '\n~~~~\n\n'; done
git show --show-signature
git show -U100
git submodule add -b branch_name https://gitlab.com/ankitpati/rpg.git modules/ankitpati/rpg
git submodule add https://github.com/ankitpati/rpg.git modules/ankitpati/rpg
git submodule deinit -f submodule_directory/
git submodule foreach --recursive git reset --hard
git submodule update --init --recursive
git tag -d tag_name
git tag -l
git tag -s tag_name
git tag -s tag_name HEAD~1
git tag -v tag_name
git tag tag_name
gjs-console
go get github.com/ericchiang/pup
go get png2svg
go-avif
google-java-format -i -a Filename.java
gpg2 --armor --export contact@ankitpati.in | pbcopy
gpg2 --armor --export contact@ankitpati.in | xclip
gpg2 --armor --export-secret-keys contact@ankitpati.in > privkey.gpg.asc
gpg2 --decrypt data.gpg --output data
gpg2 --decrypt data.gpg | brotli --decompress --output filename
gpg2 --decrypt data.gpg | brotli --decompress | grep service
gpg2 --edit-key contact@ankitpati.in
gpg2 --encrypt --sign --recipient contact@ankitpati.in filename.br
gpg2 --export -a 'Ankit Pati' > pubkey.asc
gpg2 --export-secret-keys contact@ankitpati.in > privkey.gpg
gpg2 --fingerprint contact@ankitpati.in
gpg2 --full-generate-key
gpg2 --import filename.asc
gpg2 --keyid-format long --list-keys contact@ankitpati.in
gpg2 --keyring ./filename.gpg --no-default-keyring --export -a > filename.asc
gpg2 --list-keys --keyid-format long
gpg2 --list-secret-keys
gpg2 --locate-keys contact@ankitpati.in
gpg2 --recv-keys 'B8BB CEBC BD6C 4BF0 599C 40F9 360A 9642 9F7A 69DC'
gpg2 --verify filename-CHECKSUM && sha256sum -c filename-CHECKSUM
gpg2 --with-fingerprint filename.gpg
gpg2 -c --no-symkey-cache filename.br
gradle
gradle --stop
grep '\bcertificate-authority-data\b' kubeconfig.yaml | cut -d: -f2 | cut -d' ' -f2 | while read -r certbase64; do base64 -d <<<"$certbase64" | openssl x509 -text -noout; done
grep '^p4 sync ' ~/.bash_history | cut -d' ' -f3- | sort -u | while read -r p4dir; do p4 sync "$p4dir"; done
grep --extended-regexp --line-regexp "$(paste --serial --delimiters='|' <<<"$(command -v grep cut sed watch tail bash dos2unix jq | rev | cut --delimiter='/' --fields=2- | rev | sort --unique)")" <<<"${PATH//:/$'\n'}" | sed 's,^/usr/local/,$(brew --prefix)/,' | paste --serial --delimiters=':'
grep -E "^($(tail --lines=+2 brew-deps.csv | cut -d, -f1 | comm -23 - brew-install-list.txt | paste -sd'|'))" brew-deps.csv | grep -v ,
grep -E '^\s+keg_only' -r "$(brew --repo)/Library/Taps/homebrew/homebrew-core/Formula/"
grep -Elr -- '^(<<<<<<< HEAD|=======|>>>>>>> [[:xdigit:]]+ .*)$' | sort -u | xargs --open-tty vim
grep -l search-string -r . | xargs --open-tty vim
gron --ungron filename.gron > filename.json
gron filename.json > filename.gron
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.7 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=filename.pdf filename-reduced.pdf
gsettings set org.gnome.shell.app-switcher current-workspace-only true
gsutil cat gs://bucket-name/path/to/filename # $bucket_name =~ /^[a-z](?:[-a-z0-9]{4,28}[a-z0-9])$/
gsutil cp gs://bucket-name/path/to/filename ./
gsutil signurl -d 7d service_account_key.json gs://bucket-name/path/to/filename
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
head --quiet --bytes=16 /dev/urandom | md5sum | cut --delimiter=' ' --fields=1
helm get all chart_name | yq .
helm get manifest chart_name --revision=12345 | yq 'select(.spec.template.spec.containers[1].image) | .spec.template.spec.containers[1].image'
helm history chart_name
helm list
helm list | tail --lines=+2 | tr '\t' ' ' | tr --squeeze-repeats ' ' | sort --key=4,5 --numeric-sort
helm rollback --dry-run chart_name
helm rollback chart_name 12345
helm status chart_name
helm template chart_name chart/ --values=values.yaml --output-dir="$HOME/Code/chart_name/"
helm template chart_name chart/ --values=values.yaml | yq .
help '{ ... }'
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
istioctl analyze --all-namespaces --revision=1-16-0 | cut --delimiter='[' --fields=2 | cut --delimiter=']' --fields=1 | sort --unique
istioctl analyze --namespace=namespace_name
istioctl dashboard envoy pod_name.default
istioctl install --dry-run --revision=1-16-0 --filename=istio-config.yaml
istioctl install --revision=1-16-0
istioctl install --set=profile=ambient
istioctl install --set=revision=release
istioctl operator dump | yq .
istioctl proxy-status
istioctl proxy-status --revision=1-16-0
istioctl proxy-status --revision=1-16-0 | tail --lines=+2 | cut --delimiter=' ' -f1 | cut --delimiter='.' --fields=1,2 --output-delimiter=' ' | while read -r pod namespace; do kubectl delete pod "$pod" --namespace="$namespace"; done
istioctl proxy-status --revision=default
istioctl proxy-status | grep "$(kubectl get pods --namespace=istio-system --selector=app=istio-ingressgateway --output=jsonpath='{.items..metadata.name}')"
istioctl tag list
istioctl tag set default --revision=1-16-0
istioctl uninstall --purge
istioctl uninstall --revision=1-16-0
istioctl uninstall --revision=default
istioctl verify-install
istioctl version
istioctl version --remote=false
istioctl version --short=false
istioctl x precheck
iw dev wlp2s0
iw dev wlp2s0 info
iwconfig
iwconfig wlp2s0 freq 5.2G
jamf enroll -prompt
jamf manage
jamf policy
jamf policy -event eventName
jamf recon
java -version |& head --lines=1
jd --set 1.json 2.json
jd --set <(jq .theme < .dark-reader.json) <(jq .customThemes[0].theme < .dark-reader.json)
jd -f patch 1.json 2.json
jd 1.json 2.json
johnnydep --output-format dot package_name | apdot -Tpng | timg -
johnnydep --output-format json package_name | jq .
join --nocheck-order -1 2 filename1 filename2
join -t '' filename1 filename2
join filename1 filename2
journalctl
journalctl --rotate --vacuum-time 1s
journalctl -f -o cat "$(command -v gnome-shell)"
jps
jq '.["dashed-key-name"] | to_entries | [.[] | select(.value."inner-dashed-key-name" == "bar")] | from_entries' <<<'{"dashed-key-name":{"12345":{"inner-dashed-key-name":"foo"},"12346":{"inner-dashed-key-name":"bar"},"12347":{"inner-dashed-key-name":"baz"}}}'
jq '.extensions | fromjson' filename.code-profile
jq '.globalState | fromjson' filename.code-profile
jq '.name | ascii_downcase' <<<'{ "name": "Ankit" }'
jq '.resources[] | select(.type == "google_container_node_pool" and .instances[].attributes.autoscaling[].total_max_node_count == 0)' < terraform.tfstate
jq '.settings | fromjson.settings | fromjson' filename.code-profile
jq --raw-input 'split(".") | .[0],.[1] | @base64d | fromjson' < JWT.asc
jq --raw-input 'split(".") | .[0],.[1] | @base64d | fromjson' <(kubectl exec deployment/deployment_name --container=container_name -- cat /var/run/secrets/kubernetes.io/serviceaccount/token)
jq --raw-output '. | keys | .[]' <<<'{ "key1": "value1", "key2": "value2" }'
jq --raw-output --join-output '.logs[] | select(.type != "phase").message' < quay-build-log.json ; echo
jq --raw-output .zerosuggest.cachedresults < ~/.config/google-chrome/Default/Preferences | tail --lines=+2 | jq .
jq --sort-keys --indent 4 . < filename.json
jq . < filename.json
jq builtins <<<0
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
kind create cluster
kind delete cluster
kind delete cluster --name cluster_name
kind export -v 999 logs exported-kind-logs.log
kind get clusters
kind get kubeconfig
kind get nodes
kind load docker-image image_name
krew info deprecations
krew install deprecations
krew list
kubecm --config kubeconfig.yaml list
kubecm list
kubectl api-resources
kubectl apply --filename=filename.yaml
kubectl cluster-info
kubectl cluster-info --context=docker-desktop
kubectl cluster-info --context=kind-kind
kubectl cluster-info dump | jq .
kubectl config get-contexts
kubectl config use-context cluster_name
kubectl config view
kubectl config view --minify --raw --output=jsonpath='{..cluster.certificate-authority-data}'
kubectl cp filename pod_name:/path/to/filename --container=container_name --retries=10
kubectl cp filename pod_name:filename --container=container_name
kubectl create --filename=https://ankitpati.in/example.yaml
kubectl create job job_name --from=cronjob/cronjob_name
kubectl debug container_name --stdin --tty --image=image_name --target=pod_name
kubectl debug node/kind-control-plane --stdin --tty --image=image_name
kubectl debug node/kind-worker --stdin --tty --image=image_name
kubectl delete --dry-run=client --filename=filename.yaml
kubectl delete --dry-run=server --filename=filename.yaml
kubectl delete configmap/kube-dns --namespace=kube-system
kubectl delete configmap/kube-dns-autoscaler --namespace=kube-system
kubectl delete namespace/istio-system
kubectl delete pod/pod_name
kubectl deprecations
kubectl describe deployments.apps
kubectl describe namespace/istio-system
kubectl describe namespaces
kubectl describe node/node_name
kubectl describe nodes
kubectl describe pod/pod_name
kubectl describe poddisruptionbudgets.policy
kubectl describe pods
kubectl describe pods --namespace=istio-system --selector=app=istiod
kubectl describe service/service_name
kubectl describe services --namespace=istio-system istiod-1-16-0
kubectl describe virtualservices.networking.istio.io/virtual_service_name --namespace=istio-system
kubectl edit pod/pod_name
kubectl edit virtualservices.networking.istio.io/virtual_service_name --namespace=istio-system
kubectl events --for=deployment/deployment_name --watch
kubectl exec --stdin --tty --container=container_name --namespace=namespace_name --stdin --tty pod_name -- bash -c 'while :; do nc --listen --source-port=8443 --sh-exec="nc 10.10.10.10 8443"; done'
kubectl exec --stdin --tty pod_name -- bash --login
kubectl exec --stdin --tty pod_name --container=container_name -- bash --login
kubectl exec deployment/deployment_name -- bash --login
kubectl get configmap/istio-sidecar-injector --namespace=istio-system --output=jsonpath='{.data.config}' | yq .
kubectl get configmaps --selector=owner=helm
kubectl get deployment/deployment_name --output=json | jq '.spec.template.spec.containers[1].livenessProbe'
kubectl get events --output=jsonpath='{range .items[?(@.type=="Warning")]}{.metadata.name}{"\t"}{.message}{"\n"}{end}'
kubectl get gateway/mirror --context=mirror-us-central1-abs-0 --namespace=istio-system --output=yaml | yq '.spec.servers[2].hosts'
kubectl get namespace/default --output=json | jq '.metadata.labels."istio.io/dataplane-mode"'
kubectl get namespaces --label-columns=istio.io/rev,istio-injection
kubectl get namespaces --show-labels
kubectl get nodes --all-namespaces | grep --fixed-strings v1.20. | cut --delimiter=' ' --fields=1 | xargs --max-args 1 kubectl describe node
kubectl get nodes --output=json | jq '[.items[] | select(.status.conditions[] | select(.type == "MemoryPressure" and .status == "True"))]'
kubectl get nodes --output=jsonpath='{.items[*].status.conditions[?(@.type=="MemoryPressure")]}'
kubectl get nodes --output=wide
kubectl get nodes --selector=cloud.google.com/gke-nodepool=nodepool_name --label-columns=topology.kubernetes.io/zone
kubectl get nodes --show-labels
kubectl get pods --all-namespaces
kubectl get pods --all-namespaces --output=json | jq --raw-output '.items[] | (.metadata.name + "," + .metadata.namespace + "," + .spec.nodeName)'
kubectl get pods --all-namespaces --selector='app in (istiod, istio-ingressgateway)' --output=json | jq --raw-output '.items[].spec.nodeName' | sort --unique | while read -r node_name; do printf '%s,' "$node_name"; kubectl get "node/$node_name" --output=json | jq --raw-output '[.status.nodeInfo.kubeProxyVersion, .status.nodeInfo.kubeletVersion] | join(",")'; done
kubectl get pods --context=kube-context
kubectl get pods --kubeconfig=filename.yaml
kubectl get pods --namespace=istio-system --selector=app=istio-ingressgateway --output=json | jq --raw-output '.items[].status.podIP'
kubectl get pods --namespace=istio-system --selector=app=istio-ingressgateway --output=jsonpath='{.items..metadata.name}' | sed --regexp-extended 's/ |$/\n/g'
kubectl get pods --namespace=istio-system --selector=app=istiod
kubectl get pods --output=custom-columns=pods:.metadata.name | grep deployment_name | sort --version-sort | while read -r pod; do kubectl top pod/"$pod" --no-headers; done
kubectl get pods --selector="$(kubectl get service/service_name --output=yaml | yq .spec.selector | sed 's/: /=/')"
kubectl get pods --selector=app.kubernetes.io/name=app_name --output=json | jq --raw-output '.items[].spec.nodeName' | sort --unique | while read -r node_name; do printf '%s,' "$node_name"; kubectl get "node/$node_name" --output=json | jq --raw-output '[.status.nodeInfo.kubeProxyVersion, .status.nodeInfo.kubeletVersion] | join(",")'; done
kubectl get pods --selector=app=app_name
kubectl get pods --selector=app=app_name --output=name | while read -r pod_name; do kubectl logs "$pod_name" --container=container_name --follow & done; wait
kubectl get pods | cut --delimiter=' ' --fields=1 | grep --extended-regexp '(-[[:alnum:]]+){2}$' | sort --version-sort | while read -r deployment; do kubectl logs "$deployment" --container="${deployment%%-+([[:alnum:]])-+([[:alnum:]])}"; done
kubectl get secrets --output=json | gojq '.items[].data | map_values(@base64d | try fromjson // .)'
kubectl get secrets --output=json | jq '.items[].data'
kubectl get secrets --output=json | json-recursive-decode | jq --indent 4 --sort-keys .
kubectl label namespace/default --list
kubectl label namespace/default --overwrite istio-injection- istio.io/rev=default
kubectl label namespace/default istio-injection- istio.io/rev=1-16-0
kubectl label namespace/default istio-injection=enabled
kubectl label namespace/default istio.io/dataplane-mode-
kubectl label namespace/default istio.io/dataplane-mode=ambient
kubectl logs --follow deployment/deployment_name --container=container_name
kubectl logs --follow pod_name
kubectl logs pod_name --container=container_name --since=1h
kubectl options
kubectl port-forward pod_name 8080:8000
kubectl port-forward service/service_name 12345
kubectl proxy
kubectl rollout restart daemonset/daemonset_name
kubectl rollout restart deployment/deployment_name --namespace=namespace_name
kubectl rollout restart statefulset/statefulset_name
kubectl run --stdin --tty --rm --restart=Never busybox --image=gcr.io/google-containers/busybox sh
kubectl scale deployment/kube-dns-autoscaler --namespace=kube-system --replicas=0
kubectl scale deployment/kube-dns-autoscaler --namespace=kube-system --replicas=1
kubectl top pod
kubectl top pod --containers
kubectl version --client --output=json | jq --raw-output .clientVersion.gitVersion
kubent
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
ln -s /usr/bin/{ar,ranlib} ~/bin/ && pyenv install 2.7.18; rm ~/bin/{ar,ranlib}
ln -sf /usr/lib/systemd/resolv.conf /etc/resolv.conf
ln -sfn "$(brew --prefix)/opt/openjdk/libexec/openjdk.jdk" /Library/Java/JavaVirtualMachines/openjdk.jdk
locate --statistics
loginctl list-sessions
loginctl show-session
loginctl show-session 2 -p Type
logname
lorem --randomize --lines=10
lowdown -tterm filename.md
lowdown filename.md | xq
lowdown-diff -tterm filename1.md filename2.md
lowdown-diff filename1.md filename2.md | xq
lpass edit --password unique_name
lpass login contact@ankitpati.in
lpass ls
lpass show --field='Public Key' unique_name
lpass show --sync=now --all unique_name
lpass show unique_name
ls "$(brew --prefix)/bin/g"* | rev | cut -d/ -f1 | rev | cut -dg -f2- | xargs --no-run-if-empty command -v 2>/dev/null | grep -v "^$(brew --prefix)/" | rev | cut -d/ -f1 | rev | while read -r binary; do printf '%s/bin/g%s\n' "$(brew --prefix)" "$binary"; done | xargs --no-run-if-empty ls -l | rev | cut -d/ -f4 | rev | sort -u
ls *.json | while read -r jsonfile; do jq --sort-keys --indent 4 . < "$jsonfile" | sponge "$jsonfile"; done
ls /Library/Launch{Agents,Daemons}
ls ~/Library/Application\ Support/Code/User/settings.json
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
luarocks path
luarocks show dump
makewhatis "$PREFIX/share/man"
mapfile -t < newline-separated-item-list.txt
markdownlint '**/*.md' 2> errors.txt
massren --config editor vim
massren -u
massren -u path/to/directory
mdfind -name '.csv'
mdfind -name 'log4j' | ack -i '(?<!\.)2\..*\.jar$'
meson x --buildtype release --strip -Db_lto=true
microk8s kubectl get all --all-namespaces
microk8s status --wait-ready
minikube config set driver docker
minikube config set kubernetes-version "$(brew livecheck --json kubernetes-cli | jq --raw-output '.[0].version.latest')"
minikube config set kubernetes-version "$(git ls-remote --sort=v:refname --tags https://github.com/kubernetes/kubernetes.git 'v*^{}' | cut -dv -f2 | cut -d^ -f1 | grep -P '^\d+\.\d+\.\d+$' | tail --lines=1)"
minikube config view
minikube delete
minikube start
minikube status
modinfo -F version nvidia
mogrify -format jpg ./*.png
mojo version
mount /dev/sda1 -o subvol='@/home/' /btrfs-subvolume-mount
mount /dev/sda1 -o subvolid=123 /btrfs-subvolume-mount
mount /dev/sda1 /data
msfconsole
msfdb stop
mvn --debug --errors versions:set -DnextSnapshot=true
mvn --encrypt-master-password 'maven-master-password'
mvn --encrypt-password 'maven-server-password'
mvn -U clean install -Ddependency-check.skip=true
mvn -U dependency:tree
mvn clean install -Dmaven.test.skip=true
mvn exec:java -Dexec.mainClass=in.ankitpati.ClassName
mvn help:effective-pom
mypy --config-file ~/.mypy.ini
namei -l "$(command -v perl6)"
namei -om /bin/perl6
nc -lp 5432
nc -zvv ankitpati.in 443
ncdu
neofetch
netcat --listen --local-port=8080
networkQuality -v
newgrp groupname
ng new my-app
ng serve -o
nmap --privileged -sS --send-eth -Pn -n 10.10.10.0/24 -p 22
nmap -n -sn 10.10.10.0/24
nmcli connection down id connection_name
nmcli connection show
nmcli connection show --active
nmcli connection show --configured
nmcli connection show --show-secrets
nmcli connection show connection_name
nmcli connection up id connection_name
nmcli device wifi list
nmcli device wifi rescan
nmcli general status
nmcli networking connectivity check
nmcli radio wifi
nmcli radio wifi off
nmcli radio wifi on
npm cache clean --force
npm config set prefix "$NPM_PACKAGES"
npm install --legacy-peer-deps
npx asar
nslookup ankitpati.in
nslookup ankitpati.in 1.1.1.1
nvidia-smi
objdump -R elf-binary-filename
objdump -S elf-binary-filename
objdump -d elf-binary-filename
objdump -g elf-binary-filename
objdump -r elf-binary-filename
op read op://Private/docker_personal_access_token/password | crane auth login docker.io -u "$(op read op://Private/docker_personal_access_token/username)" --password-stdin
op read op://Private/docker_personal_access_token/password | docker login -u "$(op read op://Private/docker_personal_access_token/username)" --password-stdin
op read op://Private/docker_personal_access_token/password | skopeo login docker.io --tls-verify -u "$(op read op://Private/docker_personal_access_token/username)" --password-stdin
op read op://Private/perforce/password | p4 login -a
op read op://Private/quay_encrypted_cli_password/password | skopeo login quay.io --tls-verify -u "$(op read op://Private/quay_encrypted_cli_password/username)" --password-stdin
op read op://Private/unique_name/password
op read op://Private/unique_name/username
op vault list
openfortivpn fortigate.ankitpati.in -u ankitpati -p SecretPassword -o 012345
openssl asn1parse -in openssl.key
openssl genpkey -algorithm Ed25519 -out root.key
openssl genpkey -algorithm RSA -aes128 -out openssl.key
openssl genrsa 2048 -out openssl.key
openssl help x509 2>&1 | less
openssl pkcs12 -export -out certificate.pfx -inkey privkey.pem -in cert.pem -certfile chain.pem
openssl pkcs8 -in openssl.key | openssl pkcs8 -topk8 -v2 aes128 -out openssl.key
openssl pkey -aes128 -in openssl.key -text
openssl rand -out 128_bit_key.dat 32
openssl req -in request.csr -text -noout -verify
openssl req -new -key openssl.key -out openssl.csr -config openssl.conf
openssl req -noout -modulus -in filename.csr | sha512sum
openssl req -x509 -days 36500 -new -key id_rsa -out id_rsa.x509
openssl rsa -in openssl.key -pubout -out openssl.pub
openssl rsa -in openssl.key -text -noout
openssl rsa -noout -modulus -in filename.key | sha512sum
openssl s_client -showcerts -connect example.org:443 <<<'' 2>/dev/null | openssl x509 -noout -text | grep 'Not After'
openssl s_client -showcerts -servername example.org -connect example.org:443 <<<'' 2>/dev/null | tr '\n' '^' | grep --only-matching --extended-regexp -- '-----BEGIN CERTIFICATE-----\^[^-]+\^-----END CERTIFICATE-----' | tail --lines=1 | tr '^' '\n' | openssl x509 -noout -text
openssl s_client -tls1_3 -auth_level 2 -connect 172.67.192.178:443 -servername ankitpati.in -verify_hostname ankitpati.in -verify_return_error
openssl storeutl -noout -text -certs filename-bundle.crt | grep -E '^\s+(Subject|Issuer):' | sed 's/^.*CN=//'
openssl verify -CAfile fullchain.pem cert.pem
openssl x509 -in ankitpati.pem -text
openssl x509 -in ankitpati.pem -text -noout
openssl x509 -text -noout # paste base64 block into stdin
optipng -o7 filename.png
osascript -e 'id of app "Visual Studio Code"'
ovsx create-namespace ankitpati --pat SecretPersonalAccessToken
ovsx publish --pat SecretPersonalAccessToken
p4 --field Root=/path/to/old/workspace client -o | p4 client -i; mv /path/to/new/workspace /path/to/old/workspace
p4 -z tag changes -m 10 directory/....pl
p4 annotate -c filename
p4 annotate -cu filename
p4 annotate -u filename
p4 annotate filename
p4 branch -o branch_name
p4 branches -e 'branch_name_*'
p4 branches //depot/directory/...
p4 change -o 12345
p4 changes -e 12345 filename | cut -d' ' -f2 | xargs p4 describe -du5 | delta
p4 changes -l
p4 changes -lc client_name
p4 changes -m 1 //depot/directory/filename
p4 changes -m 10 ... | cut -d' ' -f2 | xargs p4 describe -du5 | delta
p4 changes -m 10 directory/...
p4 changes -u "$USER" -s submitted | head --lines=5 | cut -d' ' -f2 | while read -r cl_number; do printf '@=%s\n' "$cl_number"; done | xargs p4 files -e | cut -d# -f1 | sort -u | while read -r source_depot_path; do p4 integrate "$source_depot_path" "${source_depot_path//\/directory1\///directory2/}"; done
p4 changes -u username
p4 changes -u username -s pending
p4 changes ...
p4 clean -n
p4 clean -n ...
p4 clean -n //depot/...
p4 clean -na
p4 clean -nd
p4 clean -ne
p4 clean -nm
p4 client
p4 client -o
p4 clients
p4 clients -e 'boron*'
p4 clients -e boron_workstation
p4 delete -nc 12345 //depot/directory/filename
p4 describe -Odu5 12345 | delta
p4 describe -Sdu5 12345 | delta
p4 describe -a 12345 | less
p4 describe -du5 12345 | delta
p4 describe -du5 default | delta
p4 diff -du5 -Od //depot/directory/... | delta
p4 diff -du5 //depot/directory/filename#123 //depot/directory/filename#124 | delta
p4 diff -du5 @=12345 | delta
p4 diff -fdu5 -Od ... @=12345 | delta
p4 diff -fdu5 -Od //depot/directory/... | delta
p4 diff -fdu5 //depot/directory/... | delta
p4 diff -fdu5 directory/filename | delta
p4 diff -se //depot/directory/... | vipe | xargs p4 reconcile -n
p4 dirs -H //depot/\*
p4 dirs //depot/\*
p4 dirs //depot/t\*
p4 edit -n directory/filename1 directory/filename2 directory/filename3
p4 filelog //depot/directory/filename
p4 filelog path/to/filename
p4 files ...file\*.pl
p4 files //.../file*.pl
p4 files //.../filename
p4 files //depot/.../\*.pl
p4 files //depot/.../filename
p4 files //depot/...file\*.pl
p4 grep -Fe expression //depot/...
p4 grep -lsFe expression //depot/... | cut -d# -f1 | xargs --open-tty vim
p4 groups
p4 groups username
p4 have path/to/filename
p4 help sizes
p4 info
p4 integrate -nc 12345 directory/filename1 directory/filename2 directory/filename3
p4 integrate -nc 12346 //depot/directory/branch1...@12345,@12345 //depot/directory/branch2/...
p4 login
p4 login -as
p4 monitor show
p4 monitor show | grep -v ' monitor $' | grep -F " $USER " | sed 's/^ \+//' | cut -d' ' -f1 | xargs --max-args 1 p4 monitor terminate
p4 monitor terminate 12345
p4 move -n directory/filename.old directory/filename.new
p4 opened
p4 passwd -O "$(op read op://Private/perforce/password)" -P "$(pwgen 20 1 | tee new_p4_pass)" && op item edit perforce password="$(< new_p4_pass)" >/dev/null && rm new_p4_pass
p4 reconcile //depot/...
p4 reopen -c 12345 directory/filename1 directory/filename2 directory/filename3
p4 resolve //depot/directory/...
p4 revert -n //depot/directory/...
p4 revert -n filename
p4 revert -nc default ...
p4 set
p4 shelve -c 12345
p4 shelve -dc 12345
p4 shelve -fc 12345
p4 shelve -rc 12345
p4 shelve //depot/...
p4 sizes -sh //depot/directory/...
p4 status
p4 submit -c 12345
p4 sync
p4 sync //depot/directory/...
p4 sync //depot/directory/...#none
p4 sync //depot/directory/filename
p4 trust
p4 undo -n -c 12346 @12345
p4 undo -n ...@12345,@12345
p4 undo @12345
p4 unshelve -s 12345 -c 12346
p4 user
p4 user -o
p4 where . | cut -d' ' -f1
p4 where directory
p4 where filename
package-cleanup
package-cleanup --dupes
package-cleanup --leaves
package-cleanup --orphans
package-cleanup --problems
packer build .
packer fmt -recursive .
packer init -upgrade .
packer validate .
pactl info
pactl list sinks
parallel reduce-to-registrable < urls.txt | sort -u > registrable-domains.txt
passwd postgres
paste <(sed --regexp-extended 's/\s+/\n/g' <<<'a quick brown fox jumps over a lazy dog') <(sed --regexp-extended 's/\s+/\n/g' <<<'article adverb adjective noun verb preposition article adjective noun')
patch --reverse < filename.patch
patch filename.c filename.c.patch
pavumeter --record
pbcopy < ~/.ssh/id_ed25519.pub
pbpaste > ~/.ssh/authorized_keys
pdf2svg filename.pdf filename-%d.svg all
pdffonts filename.pdf
pdfimages -all filename.pdf ./
pdfimages -j filename.pdf ./
pdfimages filename.pdf ./
pdfinfo filename.pdf
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
pgrep -fL jenkins # Darwin
pgrep -fa jenkins # Linux
pgrep -x chrome
pidof -s chrome
pidof chrome
ping -s 1500 ankitpati.in
pip install --upgrade 'pip < 21'
pip install -r requirements.txt
pip install black[python2]==21.12b0 # last Python 2-compatible Black
pipdeptree --json-tree -p installed_package_name | jq .
pipdeptree -p installed_package_name
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
plistutil --infile filename.plist | plistutil --sort | sponge filename.plist # segfault-prone
pluto detect-all-in-cluster
pmset -g
pmset -g log
pmset -g therm
pod2pdf path/to/Perl/Module.pm > Perl-Module-docs.pdf
podchecker path/to/Perl/Module.pm
podlinkcheck path/to/Perl/Module.pm
podlint path/to/Perl/Module.pm
podman attach container_name
podman build --build-arg=username='ankitpati' --tag=image_name .
podman build --pull --no-cache --tag=image_name .
podman build --tag=image_name:tag_name .
podman commit container_name image_name
podman container list
podman container list --all
podman container stop container_name
podman exec --interactive --tty --user=root container_name bash --login
podman exec --interactive --tty container_name bash --login
podman images
podman images --all
podman images --no-trunc --digests image_name
podman info
podman inspect --format='{{index .RepoDigests 0}}' image_name | jq .
podman inspect --latest
podman inspect container_name | jq .
podman inspect image_name | jq .
podman list
podman ps
podman ps --no-trunc --all
podman pull "kindest/node:$(skopeo list-tags docker://kindest/node | jq --raw-output .Tags[] | sort --version-sort | tail --lines=1)"
podman pull fedora
podman pull fedora-toolbox
podman pull registry.fedoraproject.org/f34
podman rmi 0dead1beef23
podman run --detach --pull=never --name=container_name --interactive --tty image_name
podman run --interactive --tty --rm --env='TERM=xterm-256color' image_name
podman run --interactive --tty --rm --volume="$HOME/.inputrc:/root/.inputrc:ro" image_name
podman run --interactive --tty --rm --volume="$HOME/.ssh:/root/.ssh" image_name
podman run --interactive --tty --rm --volume="$HOME/Mounts/container-mount:/host-directory" image_name
podman run --publish=27017:27017 --detach mongo
podman run --pull=always --interactive --tty --rm estargz.kontain.me/busybox
podman run --pull=always --interactive --tty --rm estargz.kontain.me/quay.io/ankitpati/tigress
podman run --pull=always --interactive --tty --rm fedora
podman run --pull=always --interactive --tty --rm opensuse/tumbleweed
podman run --pull=always --interactive --tty --rm ubuntu:rolling
podman run --pull=never --name=container_name --interactive --tty image_name
podman start --all --interactive container_name
podman start container_name
podman stop container_name
podman system info
podman system prune
podman tag 0dead1beef23 image_name
podman top --latest
podman top --latest huser user
podman top container_name
podman unshare
podman unshare cat /proc/self/uid_map
podman unshare chown root:root .
podman untag image_name
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
printf '%s %s\n' "$CONTAINERS_GRAPHROOT" "$CONTAINERS_RUNROOT"
printf '%s %s\n' "$LINES" "$COLUMNS"
printf '%s:%s' 'username' 'password' | base64
printf '%s\n' "$RANDOM"
printf '%s\n' "${BASH_VERSINFO[@]}"
printf '%s\n' "${MAPFILE[@]}"
printf '%s\n' $(<whitespace-separated-argument-list.txt)
printf '1 2\t3\t4\t5\t6 9 8 9 10\n' | teip -f3 -- sed 's/./x/'
pro security-status
pro security-status --thirdparty
pro security-status --unavailable
pro status
ps -eo pid,args | grep -i command_substring
ps2pdf -dPDFSETTINGS=/screen -dCompatibilityLevel=1.7 -dEmbedAllFonts=true -dSubsetFonts=true -dCompressFonts=true -dColorImageResolution=72 -dGrayImageResolution=72 -dMonoImageResolution=72 filename.pdf filename-reduced.pdf
psql 'host=localhost port=5432 dbname=database_name user=username sslmode=disable' --password
psql 'host=localhost port=5432 dbname=database_name user=username sslmode=verify-full' --password
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
pylint --list-msgs
pylint --py3k path/to/python/file.py
pyment -w path/to/python/file.py
python -m pdb <(:)
python -m pdb <(printf '%s\n' 'import sys; print(sys.path);')
python -m pdb filename.py
python -m timeit '"-".join(str(n) for n in range(100))'
python -m venv .venv
qemu-img convert filename.vmdk filename.qcow2
raku -E 'say "hello"'
range2cidr 1.1.1.0-1.1.1.255
readelf -x .rodata elf-binary-filename
readlink -e path/to/directory/
readlink -f path/to/filename
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
rlwrap sqlplus user/pass@orclalias
rm "$(brew --prefix)/opt/openssl"; ln -s "$(brew --prefix)/opt/openssl@1.1/" "$(brew --prefix)/opt/openssl"
rm -rf /Users/Shared/*Relocated\ Items*/
rm -rf ~/.local/share/containers/ # podman and buildah
rpg 100 | sed --regexp-extended 's/[^A-Za-z0-9!@#$%^*_=+;:]/=/g'
rpg 100 | sed --regexp-extended 's/\//-/g'
rpm -qp --queryformat '%{NAME}\n' ./*.rpm
rpm2cpio ../filename.rpm | cpio -idmv
rpm2cpio filename.rpm > filename.cpio
rpmconf -a -f vimdiff
rpmconf -c
scour filename.svg filename-scour.svg -v --no-renderer-workaround --strip-xml-prolog --remove-titles --remove-descriptions --remove-metadata --remove-descriptive-elements --enable-comment-stripping --disable-embed-rasters --enable-viewboxing --indent=none --no-line-breaks --strip-xml-space --enable-id-stripping --shorten-ids
scrcpy --force-adb-forward -b 1000
scrcpy -b 1000
script -T timing script
script -dp typescript
script -p typescript
script -r
scriptreplay -t timing script
scriptreplay typescript
sed '/^$/d' file-with-blank-lines.txt
sed --in-place --regexp-extended 's,lpass show --(username|password) ([^ )]+),op read op://Private/\2/\1,g' file-with-lpass-usage
sed --regexp-extended 's/ /\n/g' < /proc/cmdline
sed -i -E 's|#!/usr/bin/octave -q|#!/usr/bin/env -S octave -q|g' -- *.m
sendmail -v contact@ankitpati.in <<<'Subject: Hello\n'
sensors
seq -w 000 007 | while read -r num; do cat "input$num.txt"; read -r; cat "output$num.txt"; read -r; done
sestatus
sha256sum -c filename-CHECKSUM
sha512sum --status --strict -c <<<'f65f341b35981fda842b09b2c8af9bcdb7602a4c2e6fa1f7d41f0974d3e3122f268fc79d5a4af66358f5133885cd1c165c916f80ab25e5d8d95db46f803c782c hello.txt'
shellharden --replace filename.bash
shellharden filename.bash
shfmt -w -s filename.bash
skaffold help
skopeo --debug inspect docker://docker.repo.local.sfdc.net/sfci/docker-images/golang_build
skopeo copy docker-archive:filename.tar docker://quay.io/namespace/image_name:tag_name
skopeo inspect --daemon-host="$DOCKER_HOST" docker-daemon:image_name:tag_name | jq .
skopeo inspect docker://quay.io/ankitpati/tigress | jq .
skopeo list-tags --override-arch amd64 --override-os linux docker://kindest/node | jq --raw-output .Tags[] | sort -V
skopeo list-tags docker://hashicorp/terraform | jq --raw-output .Tags[] | while read -r tag; do skopeo inspect docker://hashicorp/terraform:"$tag" | jq --join-output '[.Created,.Labels."com.hashicorp.terraform.version"] | join(" ")'; printf ' %s\n' "$tag"; done | sort -V
skopeo list-tags docker://quay.io/ankitpati/tigress | jq --raw-output .Tags[]
skopeo sync --all --src docker --dest docker gcr.io/project_id/namespace/image_name quay.io/namespace/image_name
skopeo sync --dry-run --all --src docker --dest docker gcr.io/project_id/namespace/image_name quay.io/namespace/image_name
skopeo sync --override-arch amd64 --override-os linux --src docker --dest docker gcr.io/project_id/namespace/image_name:tag_name quay.io/namespace/
sloccount .
snap disable snapd-desktop-integration
snap enable snapd-desktop-integration
snap list
snap logs snapd-desktop-integration
snap model
snap model --assertion
snap model --verbose
snap okay
snap remove --purge snapd-desktop-integration
snap services
snap services microk8s.daemon-kubelite
snap services snapd-desktop-integration
snap start snapd-desktop-integration
snap stop snapd-desktop-integration
snap warnings
snyk auth
snyk auth "$(op read op://Private/snyk_auth_token/password)"
snyk monitor
softwareupdate --verbose --agree-to-license --install --all --restart
source ./.venv/bin/activate
spctl developer-mode enable-terminal
speedtest
speedtest-cli
sqlcmd -S localhost -U SA -P p@5Sword
sqlfluff fix --force --dialect=postgres filename.sql
sqlformat --keywords=upper --identifiers=lower --reindent --indent_width=4 --indent_after_first --indent_columns --reindent_aligned --use_space_around_operators filename.sql | sponge filename.sql
sqlite3 filename.sqlite
sqlite3 ~/Library/Containers/org.p0deje.Maccy/Data/Library/Application\ Support/Maccy/Storage.sqlite 'select group_concat(zvalue, char(10)) from zhistoryitemcontent where zvalue regexp "^[a-z0-9-_@.]+$"' | xargs brew info
sqlite3_analyzer filename.sqlite
sqlplus user/pass@orclalias
src search 'case:yes context:global file:filename.ext patternType:literal'
src search 'case:yes context:global patternType:literal repo:^github\.com/ankitpati/rpg$ bitcount'
src search 'type:repo tcount'
ss -tulpn
ssh -G ssh.ankitpati.in
ssh -L 8080:/tmp/sockname.sock ssh.ankitpati.in
ssh -o ClearAllForwardings=yes ssh.ankitpati.in
ssh -o IPQoS=none ssh.ankitpati.in
ssh -vvv ssh.ankitpati.in
ssh-copy-id -o PasswordAuthentication=yes ssh.ankitpati.in
ssh-keygen -R ssh.ankitpati.in
ssh-keygen -l -v -f ~/.ssh/id_ed25519
ssh-keygen -l -v -f ~/.ssh/id_ed25519.pub
ssh-keygen -m PEM -t rsa -b 2048 -P '' -C '' -f ./rsa_private_key.pem
ssh-keygen -t ed25519
ssh-keygen -t ed25519 -P '' -f ~/.ssh/id_ed25519
ssh-keygen -y -f ~/.ssh/id_ed25519 > ~/.ssh/id_ed25519.pub
sslscan ankitpati.in:443
sslyze ankitpati.in:443
sss_cache -E
stat -c '%w' filename
steampipe plugin install aws
steampipe plugin install gcp
steampipe plugin list
steampipe query
steampipe query --output json 'select name, zone_name from gcp_project_project_name.gcp_compute_instance limit 1' | jq .
steampipe service status
steampipe service stop
steampipe service stop --force
strace -e open -o programname.strace programname programargs
strace programname 2> programname.strace
stty sane
subnetcalc 10.10.10.10/24 -n
sudo bash -c 'apt update; apt-fast dist-upgrade -y; apt autoremove -y; apt clean; snap refresh; flatpak update; pkcon refresh force; pkcon update; fwupdmgr get-updates; fwupdmgr upgrade; chmod 0750 /usr/bin/nmap /usr/sbin/etherape; chown root:wireshark /usr/bin/nmap /usr/sbin/etherape; setcap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/bin/nmap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/sbin/etherape'
sudo bash -c 'dnf upgrade --refresh; snap refresh; flatpak update; pkcon refresh force; pkcon update; fwupdmgr get-updates; fwupdmgr upgrade; chmod 0750 /usr/bin/nmap /usr/sbin/etherape; chown root:wireshark /usr/bin/nmap /usr/sbin/etherape; setcap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/bin/nmap cap_net_raw,cap_net_admin,cap_net_bind_service+eip /usr/sbin/etherape'
sudo bash -c 'rfkill unblock bluetooth; systemctl restart bluetooth.service'
sudo ifconfig awdl0 down # on macOS, disable Apple Wireless Direct Link
sudo ifconfig awdl0 up
sudo inxi -SMCDG
sudo kubectl port-forward pod_name 80:8080
sudo powermetrics --samplers smc
sudo rm /Library/Internet\ Plug-Ins/{.,}*
sudo usermod -a -G microk8s "$USER"
svg2png filename.svg
systemctl --user enable --now podman.socket
systemctl --user status podman.socket
systemctl disable --now avahi-daemon.service
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
systemctl mask sleep.target suspend.target hibernate.target suspend-then-hibernate.target hybrid-sleep.target
systemctl status snap.microk8s.daemon-containerd.service
systemctl stop gdm.service
systemd-analyze cat-config systemd/resolved.conf
tail --lines=+2 brew-deps.csv | cut -d, -f1 | comm -23 - brew-install-list.txt | while read -r brew_formula; do grep "^$brew_formula" brew-deps.csv; done
tccutil reset ScreenCapture com.google.Chrome
telnet google.com & telnet_pid="$!" && ( sleep 5; kill "$telnet_pid" ) && fg; unset telnet_pid
terminal-notifier <<<'macOS Notification Text'
terraform apply tfplan
terraform fmt
terraform graph | apdot -Tpng | timg -
terraform graph | apdot -Tsvg > filename.svg
terraform graph | terraform-graph-beautifier -output-type=graphviz | apdot -Tpng | timg -
terraform graph | terraform-graph-beautifier -output=terraform-graph.html
terraform import module.dns.kube-dns kube-system/kube-dns
terraform init
terraform init -upgrade
terraform init -verify-plugins false
terraform plan -destroy -out tfplan
terraform plan -out tfplan -target module.vpc1 -target module.vpc2
terraform plan -out tfplan -var boolean_var_name=true
terraform refresh
terraform show tfplan -no-color > tfplan-for-diff
terraform show tfplan | landscape
terraform show tfplan | less -R
terraform state list
terraform state rm null_resource.resource_name
terraform state show module.compute.google_compute_address.compute-array[0]
terraform taint module.module_name
terraform validate
timedatectl set-timezone Asia/Kolkata
timeout --signal INT 3 sleep 10
tmux a
tmux kill-server
tmux ls
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
ugrep --only-matching --perl-regexp -- '-{5}BEGIN ([^-]*KEY[^-]*-{5})(.|\n)+?-{5}END \1' < ascii-armoured-keys | xargs --delimiter=$'\n' printf '%b\n' | while read -r line; do if [[ $line =~ ^-{5}BEGIN ]]; then continue; elif [[ $line =~ ^-{5}END ]]; then echo; else printf '%s' "$line"; fi done | sort --unique
ugrep -Q
ugrep -Q -.
umount /data
uname -a
uname -r
unix2dos filename.txt
update-desktop-database
update-mime-database
updatedb
uprecord
uptime
url --decode < gcp_savedViews.json | sed 's/(/{/g;s/)/}/g' | jq . | sponge gcp_savedViews.json
usb-devices
usermod -aG libvirt administrator
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
vctl run -it rockylinux bash --login
vctl system info
vctl system start
vctl system stop
vctl volume
vctl volume prune
vdpauinfo
vim "$PREFIX/etc/ssh/sshd_config" # Termux
vim -i NONE -u NONE ~/.viminfo
vim -i NONE ~/.viminfo
vim -u NONE ~/.viminfo
vim /etc/shells
vimdiff <(cat filename1) <(cat filename2)
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
virtualenv --python "$(command -v python2)" --clear ~/.venv/python2-app/
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
wc --bytes --total=never filename*
wget https://www.toptal.com/developers/gitignore/api/java,netbeans,eclipse,jetbrains,android,androidstudio -O .gitignore
whatchanged origin/development..
while :; do kubectl get pods --watch --selector=app=app_name; done
while :; do kubectl port-forward --namespace=namespace_name pod/pod_name 8443; done
while :; do virsh -c qemu:///system send-key Windows-10 KEY_J; sleep 120; done
while :; do xdotool mousemove --sync 1000 10 sleep 0.5 mousemove restore; sleep 120; done
while read -r directory; do find "$(case "$directory" in -*) printf ./ ;; esac; printf '%s' "$directory")" \( -type f -exec ls -lt -- {} \; -exec md5sum -- {} \; \) -o \( -type d -exec ls -ltd -- {} \; -exec printf '%s %s' 'directory' {} \; \); done < directory-list.txt
while read -r gitdir; do ( cd "$gitdir/"; git pull ) done < <(ls)
wl-copy < filename.txt
write ankitpati :1
write ankitpati tty4
xargs --max-lines 1 --open-tty rg < file-with-search-terms.txt
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
xxd -plain -l 16 </dev/urandom
xz -v9e filename.tar
yapf -i filename.py
yasql user/pass@orclalias
youtube-dl https://www.youtube.com/watch?v=VIDEO_ID -F
youtube-dl https://www.youtube.com/watch?v=VIDEO_ID -f 248
yq -P < filename.yaml
yq eval-all '[.] | to_json' < filename.yaml > filename.json
zbarimg filename.jpg > filename.dat
zlib-flate -uncompress < filename.dfl > filename.txt
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
