all: install

install:
	cp -rL src/. "$$HOME"/
	rm -rf "$$HOME"/macOS/
	mkdir -p "$$HOME"/.vim/autoload/ "$$HOME"/.vim/swapfiles/
	git clone --depth 1 https://github.com/junegunn/vim-plug.git
	mv vim-plug/plug.vim "$$HOME"/.vim/autoload/
	rm -rf vim-plug/
	vim +PlugUpdate +qa
