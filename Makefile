all: test install

test:
	prove -v

install:
	rm -rf src/macOS/
	cp -rL src/. "$$HOME"/
	git checkout src/macOS/
	chmod 0700 \
		"$$HOME/.gnupg/" \
		"$$HOME/.kube/" \
		"$$HOME/.ssh/" \
	;
	chmod 0600 \
		"$$HOME/.gnupg/"* \
		"$$HOME/.kube/"* \
		"$$HOME/.netrc" \
		"$$HOME/.pgpass" \
		"$$HOME/.ssh/"* \
	;
	mkdir -p "$$HOME"/.vim/autoload/ "$$HOME"/.vim/swapfiles/
	git clone --depth 1 https://github.com/junegunn/vim-plug.git
	mv vim-plug/plug.vim "$$HOME"/.vim/autoload/
	rm -rf vim-plug/
	vim +PlugUpdate +qa
