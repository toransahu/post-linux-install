# Installation

Bootstrap (with my preferences & configs - Yeah, way more than just deploying the `dotfiles`) a newly installed Linux (debian).

```bash
wget -O - https://raw.githubusercontent.com/toransahu/post-linux-install/master/src/setup.sh | sh
```

It's as simple as that.

# TODOs

0. simplify password
	- http://ubuntuhandbook.org/index.php/2015/06/minimum-password-length-ubuntu/
- install cinnamon & lightdm
	- https://linuxconfig.org/how-to-install-cinnamon-desktop-on-ubuntu-18-04-bionic-beaver-linux
- [x] install cinnamon mint-x & mint-y dark themes
	- https://www.linuxuprising.com/2018/07/how-to-replace-nautilus-with-nemo-file.html
	- wget http://packages.linuxmint.com/pool/main/m/mint-y-icons/mint-y-icons_1.3.3_all.deb 
	- wget http://packages.linuxmint.com/pool/main/m/mint-x-icons/mint-x-icons_1.5.1_all.deb 
	- wget http://packages.linuxmint.com/pool/main/m/mint-themes/mint-themes_1.7.8_all.deb
	- sudo dpkg -i mint-x-icons_1.5.1_all.deb
	- sudo dpkg -i mint-y-icons_1.3.3_all.deb
	- sudo dpkg -i mint-themes_1.7.8_all.deb # dependencies - above 2
- replace nautilus with nemo & fix rename background color issue
	- https://www.linuxuprising.com/2018/07/how-to-replace-nautilus-with-nemo-file.html
	- sudo apt install nemo
	- xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search
- window applet
	- icing task manager - automate it 
- download post_install
- download keys and deploy
	- wget https://github.com/toransahu/keys/archive/v0.1.0.zip
	- deploy ssh keys
		- cp keys/ssh/* ~/.ssh/
		- chmod 400 ~/.ssh/id_rsa
	- deploy gpg keys
		- #cp keys/gpg/my-gpg.key ~/.gnupg/
		- gpg --list-secret-keys
		- gpg --import my-gpg.key
		- gpg --list-secret-keys
- git setup
	- sudo apt install git
	- [x] configure
		- git config --global user.email "toran.sahu@yahoo.com"
		- git config --global user.name "Toran Sahu"
		- git config --global user.sigingkey 989892661D11D494 
		- git config --global commit.gpgsign true # to sign commits by def, will ask for gpg (not ssh) paraphrase 
	- add ssh
		- eval "$(ssh-agent -s)"
		- ssh-add ~/.ssh/id_rsa
	- add gpg
		- #gpg --list-secret-keys --keyid-format LONG
		- #gpg --armor --export <row: sec wala; column:/ k baad wala>	
- download linux-tweaks
- path.sh add device entry
- create a variables.sh for global uses
- install_firefox.sh not working
- handle ycmd server python setup with vundle/vim plugin install

- slack, skype, postman, redshift, touchpad gesture, intellij idea
