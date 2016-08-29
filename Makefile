all: ubuntu

ubuntu:
	sudo apt-get install vim -y
	cp .vimrc ~
	cp .tmux.conf ~
	cp -r .vim ~
	# setup Vundle
	if [! -d '~/.vim/bundle/Vundle.vim']; then \
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim; \
	fi
	# install plugins with vundle
	vim +PluginInstall +qall
	# setup you complete me
	sudo apt-get install build-essential cmake -y
	sudo apt-get install python-dev -y
	~/.vim/bundle/YouCompleteMe/install.py --clang-completer

mac:
	cp .vimrc ~
	cp .tmux.conf ~
	cp -r .vim ~
	# setup Vundle
	if [! -d '~/.vim/bundle/Vundle.vim']; then \
		git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim; \
	fi
	# install plugins with vundle
	vim +PluginInstall +qall
	# setup you complete me
	brew install  cmake
	~/.vim/bundle/YouCompleteMe/install.py --clang-completer
