#!/usr/bin/env bash


sudo echo " need sudo to install all the things we should have in each box "


# first install a require script
if ! [[ -x "$(command -v require.sh)" ]] ; then

	echo " we need sudo to install require.sh to /usr/local/bin "
	sudo wget -O /usr/local/bin/require.sh https://raw.githubusercontent.com/xriss/require.sh/main/require.sh
	sudo chmod +x /usr/local/bin/require.sh

fi

# commands

require.sh git
git config --global core.editor "nano"
git config --global user.name "vagrant"
git config --global user.email "vagrant@vagrant"

require.sh clang
require.sh gcc
require.sh make
require.sh luajit
require.sh patchelf
require.sh gzip
require.sh zip
require.sh unzip
require.sh pv


# libs

require.sh lua-filesystem

# devs

require.sh /usr/include/readline/readline.h
require.sh /usr/include/GL/gl.h
require.sh /usr/include/X11/X.h
require.sh /usr/include/alsa/asoundlib.h
require.sh /usr/include/libudev.h
require.sh /usr/include/pulse/pulseaudio.h
require.sh /usr/include/SDL2/SDL.h
require.sh /usr/include/openssl/ssl.h

#this mucks up thanks to luajit2 conflict
#require.sh /usr/include/luajit-2.0/lua.h
#require.sh /usr/include/luajit-2.1/lua.h


# android needs the java

require.sh /usr/bin/javac
require.sh /usr/lib/jvm/java-17-openjdk/bin/javac
