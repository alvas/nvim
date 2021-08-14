Install neovim:

On Mac OS X:
brew update
brew install neovim

On linux:
apt-get update
apt-get install neovim

Use the following command to install nvim config file and plugin:

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim<br />
git clone https://github.com/alvas/nvim.git ~/.config/nvim/<br />
nvim +PluginInstall +qall


To index files in /usr/src and /usr/include folder for cscope:
$find /usr/src/ -type f ! -type l \( -iname \*.h -o -iname \*.c -o -iname \*.cpp -o -iname \*.cc -o -iname \*.S \) >  cscope.files
$find /usr/include -type f ! -type l \( -iname \*.h -o -iname \*.c -o -iname \*.cpp \) >>  cscope.files
$cscope -Rbqk

