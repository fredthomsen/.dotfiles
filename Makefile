# Personal .dotfiles files Makefile
#
# Creates symlink to appropriate dot file from home directory

all: sh bash zsh git fonts desktop xfce4

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

git:
	ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig
	ln -sf ~/.dotfiles/.git_home ~/.git_home
	ln -sf ~/.dotfiles/.git_work ~/.git_work
	ln -sf ~/.dotfiles/.gitignore ~/.gitignore

fonts:
	ln -sf ~/.dotfiles/.fonts ~/.fonts

desktop:
	ln -sf ~/.dotfiles/.themes ~/.themes
	ln -sf ~/.dotfiles/.icons ~/.icons
	ln -sf ~/.dotfiles/.wallpaper ~/.wallpaper
	ln -sf ~/.dotfiles/.xscreensaver ~/.xscreensaver
	ln -sf ~/.dotfiles/.face ~/.face
	ln -sf ~/.dotfiles/.config/autostart ~/.config/autostart
	ln -sf ~/.dotfiles/.config/kupfer ~/.config/kupfer

xfce4:
	ln -sf ~/.dotfiles/.config/xfce4 ~/.config/xfce4
