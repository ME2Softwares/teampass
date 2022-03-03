#!/bin/sh
if [ ! -d ./teampass/.git ];
then
	echo "Initial setup..."
	git clone https://github.com/nilsteampassnet/TeamPass.git teampass
	mkdir ./teampass/sk
fi

if [ -f ./teampass/includes/config/settings.php ] ;
then
	echo "Teampass is ready."
	rm -rf teampass/install
else
	echo "Teampass is not configured yet. Open it in a web browser to run the install process."
	echo "Use ./teampass/sk for the absolute path of your saltkey."
	echo "When setup is complete, restart this image to remove the install directory."
fi
