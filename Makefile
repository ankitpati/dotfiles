all: install

install:
	cp -r src/. "$$HOME"/
	mkdir -p "$$HOME"/.vim/{swapfiles,bundle}
	git clone https://github.com/VundleVim/Vundle.vim.git "$$HOME"/.vim/bundle/Vundle.vim/
	vim +PluginUpdate +qa
