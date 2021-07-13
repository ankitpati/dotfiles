all: install

install:
	cp -r src/. "$$HOME"/
	rm -rf "$$HOME"/macOS/
	mkdir -p "$$HOME"/.vim/bundle "$$HOME"/.vim/swapfiles
	git clone https://github.com/VundleVim/Vundle.vim.git "$$HOME"/.vim/bundle/Vundle.vim/
	vim +PluginUpdate +qa
