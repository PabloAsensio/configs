cd $HOME

if [[ $(echo $OSTYPE) == "linux-gnu"* ]]; then
	sudo snap install lsd
    	sudo apt install bat -y
	sudo apt install curl -y
	sudo apt install zsh -y
else
	brew install lsd
    	brew install bat
fi

ln -sf configs/.vim .vim
ln -sf configs/.bash_aliases .bash_aliases
ln -sf configs/.vimrc .vimrc
ln -sf configs/.zshrc .zshrc
ln -sf configs/.vim_runtime .vim_runtime
ln -sf configs/powerlevel10k powerlevel10k

# NeoVim
sh ~/.vim_runtime/install_awesome_vimrc.sh

# ZSH
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
ln -sf configs/.oh-my-zsh .oh-my-zsh
source ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
chsh -s $(which zsh)
