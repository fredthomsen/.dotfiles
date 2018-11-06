# Personal .dotfiles files Makefile
#
# Creates symlink to appropriate dot file from home directory

all: sh bash zsh git fonts vim terminal

sh:
	ln -sf ~/.dotfiles/.aliases ~/.aliases
	ln -sf ~/.dotfiles/.colors ~/.colors
	ln -sf ~/.dotfiles/.functions ~/.functions
	ln -sf ~/.dotfiles/.profile ~/.profile

bash:
	ln -sf ~/.dotfiles/.login ~/.bash_login
	ln -sf ~/.dotfiles/.bash_profile ~/.bash_profile
	ln -sf ~/.dotfiles/.bashrc ~/.bashrc
	ln -sf ~/.dotfiles/.logout ~/.bash_logout

zsh:
	ln -sf ~/.dotfiles/.login ~/.zlogin
	ln -sf ~/.dotfiles/.zshrc ~/.zshrc
	ln -sf ~/.dotfiles/.logout ~/.zlogout
	chsh -s /usr/bin/zsh

vim:
	ln -sf ~/.dotfiles/.vim/ ~/.vim
	ln -sf ~/.dotfiles/.vim/.vimrc ~/.vimrc
	ln -s  ~/.dotfiles/.config/nvim ~/.dotfiles/.vim
	ln -s  ~/.dotfiles/.vim/.vimrc ~/.dotfiles/.vim/init.vim

git:
	ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
	ln -sf ~/.dotfiles/.git_home ~/.git_home
	ln -sf ~/.dotfiles/.git_work ~/.git_work
	ln -sf ~/.dotfiles/.gitignore ~/.gitignore

fonts:
	ln -sf ~/.dotfiles/.fonts ~/.fonts

terminal:
	ln -sf ~/.dotfiles/.iterm2 ~/.iterm2
	ln -sf ~/.dotfiles/.config/terminator/ ~/.config/terminator

linux_desktop:
	ln -sf ~/.dotfiles/.themes ~/.themes
	ln -sf ~/.dotfiles/.icons ~/.icons
	ln -sf ~/.dotfiles/.wallpaper ~/.wallpaper
	ln -sf ~/.dotfiles/.xscreensaver ~/.xscreensaver
	ln -sf ~/.dotfiles/.face ~/.face
	ln -sf ~/.dotfiles/.config/autostart ~/.config/autostart
	ln -sf ~/.dotfiles/.config/kupfer ~/.config/kupfer
	ln -sf ~/.dotfiles/.config/menus ~/.config/menus
	ln -sf ~/.dotfiles/.config/xfce4 ~/.config/xfce4
