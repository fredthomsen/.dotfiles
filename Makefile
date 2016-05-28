# Personal .dotfiles files Makefile
#
# Creates symlink to appropriate dot file from home directory

all: bash git fonts themes
bash: bash_aliases bash_functions bash_logout bashrc profile 
git: gitconfig gitignore 

bash_aliases: 
	ln -sf ~/.dotfiles/.bash_aliases ~/.bash_aliases

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

gitignore:
	ln -sf ~/.dotfiles/.gitignore ~/.gitignore
