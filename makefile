all: link
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
link:
	ln -sf vimrc ~/.vimrc
	rm ~/.vim && ln -sfn current ~/.vim

