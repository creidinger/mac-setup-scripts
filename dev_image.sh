#!/bin/bash
#
# Base computer image for Dev
# Homebrew must be installed for this to work properly. 
#
# Also setup for permissions for pkgconfig
# sudo chown -R $(whoami) /usr/local/lib/pkgconfig
# chmod u+w /usr/local/lib/pkgconfig

### Folders ###
function make-folders() {
	echo -e "============================================\nmake-folders()\n============================================"
	cd ~
	echo "Making ~/dev folder"
	mkdir dev 
	echo "Making ~/www folder"
	mkdir www
	echo
}

### SOFTWARE ###
function install-casks() {

	echo -e "============================================\ninstall-casks()\n============================================"

	# List of applications to install via homebrew
	CASKS="android-studio balenaetcher discord sketch sublime-text virtualbox applepi-baker brackets docker mysqlworkbench sourcetree unity atom diffmerge firefox postman steam vagrant"

	# Loop through brew list and install
	for CASK in $CASKS
	do
		brew cask install $CASK
	done

	echo
}


function install-brews() {

	echo -e "============================================\ninstall-brews()\n============================================"

	# List of brews in install bia homebrew
	BREWS="ansible glib libmikmod little-cms2 pcre sdl_ttf composer icu4c libogg mercurial portmidi shared-mime-info curl ilmbase libomp mu python sqlite docker imagemagick libpng mysql python@2 telnet freetype jpeg libtiff node readline webp gdbm libde265 libtool openexr sdl x265 gettext libffi libvorbis openjpeg sdl_image xapian git-lfs libheif libyaml openssl sdl_mixer xz"

	# Loop through and install brews
	for BREW in $BREWS 
	do
		brew install $BREW
	done

	echo
}

make-folders
install-casks
install-brews

