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
	ln -sf ~/.dotfiles/.tmux.conf ~/.tmux.conf
	ln -sf ~/.dotfiles/.Xresources ~/.Xresources
	ln -sf ~/.dotfiles/.xinitrc ~/.xinitrc

linux_desktop:
	ln -sf ~/.dotfiles/.themes ~/.themes
	ln -sf ~/.dotfiles/.icons ~/.icons
	ln -sf ~/.dotfiles/.wallpaper ~/.wallpaper
	ln -sf ~/.dotfiles/.xscreensaver ~/.xscreensaver
	ln -sf ~/.dotfiles/.face ~/.face
	ln -sf ~/.dotfiles/.config/i3 ~/.config/i3
	ln -sf ~/.dotfiles/.config/polybar ~/.config/polybar
	ln -sf ~/.dotfiles/.config/gtk-3.0 ~/.config/gtk-3.0
	ln -sf ~/.dotfiles/.config/dunst ~/.config/dunst

qutebrowser:
	ln -sf ~/.dotfiles/.config/qutebrowser ~/.config/qutebrowser
	/usr/share/qutebrowser/scripts/importer.py -q -BK ~/.dotfiles/.info/bookmarks.html > ~/.config/qutebrowser/quickmarks

newsboat:
	rm ~/.newsboat/urls
	newsboat -i ~/.dotfiles/.info/rss.opml
	newsboat -i ~/.dotfiles/.info/youtube.opml
