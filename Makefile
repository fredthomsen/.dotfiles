# Personal .dotfiles files Makefile
#
# Creates symlink to appropriate dot file from home directory

all: bash git fonts themes icons desktop config
bash: bash_aliases bash_functions bash_logout bashrc profile 
git: gitconfig gitignore
config: xfce4 kupfer

bash_aliases: 
	ln -sf ~/.dotfiles/.bash_aliases ~/.bash_aliases

bash_colors:
	ln -sf ~/.dotfiles/.bash_colors ~/.bash_colors

bash_functions: 
	ln -sf ~/.dotfiles/.bash_functions ~/.bash_functions

bash_logout: 
	ln -sf ~/.dotfiles/.bash_logout ~/.bash_logout

bashrc: 
	ln -sf ~/.dotfiles/.bashrc ~/.bashrc

profile:
	ln -sf ~/.dotfiles/.profile ~/.profile

gitconfig:
	ln -sf ~/.dotfiles/.gitconfig ~/.gitconfig

themes:
	ln -sf ~/.dotfiles/.themes ~/.themes

fonts:
	ln -sf ~/.dotfiles/.fonts ~/.fonts

icons:
	ln -sf ~/.dotfiles/.icons ~/.icons

desktop:
	ln -sf ~/.dotfiles/.wallpaper ~/.wallpaper
	ln -sf ~/.dotfiles/.xscreensaver ~/.xscreensaver
	ln -sf ~/.dotfiles/.face ~/.face

gitignore:
	ln -sf ~/.dotfiles/.gitignore ~/.gitignore

xfce4:
	ln -sf ~/.dotfiles/.config/xfce4 ~/.config/xfce4
	ln -sf ~/.dotfiles/.config/autostart ~/.config/autostart

kupfer:
	ln -sf ~/.dotfiles/.config/kupfer ~/.config/kupfer
