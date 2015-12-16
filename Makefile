all:
	sudo apt-get install vim -y
	cp .vimrc ~
	cp -r .vim ~
	# setup Vundle
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	# install plugins with vindle
	vim +PluginInstall +qall
	# setup you complete me
	sudo apt-get install build-essential cmake -y
	sudo apt-get install python-dev -y
	cd ~/.vim/bundle/YouCompleteMe
	./install.py --clang-completer
