#!/bin/bash

case "$OSTYPE" in
  darwin*)
   echo "OSX"
   sudo port install php5-curl
   echo "Installing brew .... "
   ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
   brew doctor
   echo "Updating brew .... "
   brew update
   ;; 
  linux*)
   echo "UBUNTU"
   sudo apt-get install ruby-full curl git
   sudo apt-get install build-essential m4 ruby texinfo libbz2-dev libcurl4-openssl-dev libexpat-dev libncurses-dev
   sudo apt-get install libxml2-dev libxslt1-dev zlib1g-dev
   ;;
  *)        echo "unknown: $OSTYPE" ;;
esac

case "$OSTYPE" in
  darwin*)
   brew install libsndfile
   brew link --overwrite libsndfile
   brew install git
   echo "Updating port..."
   sudo port -v selfupdate
   echo "Installing ffmpeg..."
   brew install ffmpeg   
   # sudo port install ffmpeg +gpl +postproc +lame +theora +libogg +vorbis +xvid +x264 +a52 +faac +faad +dts +nonfree   
   echo "Installing eSpeak..."
   brew install espeak
   echo "Installing Python..."
   brew install python --universal --framework
   ;;
  linux*)
   sudo apt-get install python
   sudo apt-get install python-dev python-setuptools libsndfile-dev
   sudo apt-get install espeak
   sudo add-apt-repository ppa:mc3man/trusty-media
   sudo apt-get update
   sudo apt-get install ffmpeg gstreamer0.10-ffmpeg
   sudo apt-get install x264
   ;;
esac


echo "Installing ez_setup .... "
curl https://bootstrap.pypa.io/ez_setup.py -o - | sudo python
echo "Installing BeautifulSoup .... "
sudo easy_install BeautifulSoup
echo "Installing lxml .... "
sudo easy_install lxml
echo "Installing numpy .... "
sudo easy_install numpy
echo "Installing scikits.audiolab .... "
sudo easy_install scikits.audiolab

echo "Installing pip .... "
sudo easy_install pip

rm -rf aeneas
echo "Clonning git repo aeneas .... "
git clone https://github.com/readbeyond/aeneas.git
cd aeneas
pip install -r requirements.txt
python check_dependencies.py
cd ..


