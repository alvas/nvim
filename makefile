init:
	apt update
	apt install neovim -y
	apt install cmake -y
	apt install exuberant-ctags -y
	apt install cscope -y
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
	git clone https://github.com/alvas/nvim.git ~/.config/nvim/
	nvim +PluginInstall +qall
