#!/bin/sh

# setup script for fedora 17 fresh install

su -c '
yum upgrade -y
yum localinstall -y --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-18.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-18.noarch.rpm
yum localinstall -y --nogpgcheck http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm

yum update -y
yum install clementine vlc qt-creator ffmpeg ffmpeg-devel firefox thunderbird ruby ruby-devel python emacs-nox emacs-auto-complete emacs-color-theme emacs-el emacs-goodies git gstreamer-plugins-bad gstreamer-devel gstreamer-ffmpeg gstreamer-java gstreamer-plugins-bad-free gstreamer-plugins-bad-free-devel gstreamer-plugins-bad-free-extras gstreamer-plugins-bad-nonfree gstreamer-plugins-base gstreamer-plugins-base-devel gstreamer-plugins-base-tools gstreamer-plugins-fc gstreamer-plugins-good gstreamer-plugins-good-extras gstreamer-plugins-ugly gstreamer-tools java-1.7.0-openjdk blender gimp  wget make gcc unetbootin yakuake libreoffice htop rsync subversion mercurial kmod-staging transmission-qt powertop kde-partitionmanager gitk colordiff valgrind flash-plugin unzip unrar filezilla xchat nmap wireshark digikam screen dkms libbsd-devel lm_sensors rfkill curl gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel openssl-devel bzip2 autoconf automake libtool flex bison gperf libicu-devel libxslt-devel libudev-devel libxcb libxcb-devel xcb-util xcb-util-devel mesa-libEGL-devel mesa-libgbm-devel mesa-libGLES-devel perl-version perl-Digest-MD5 qt-recordmydesktop aircrack-ng airsnort qemu macchanger p7zip samba-client kdeadmin cmake cppunit kate arduino opencv python-devel alsa-lib-devel rpm-build libXft.i686  at-spi-devel dbus-devel directfb-devel ffmpeg-compat-devel ffmpegthumbnailer-devel opencv opencv-devel recode xorg-x11-xinit-session sqlite-devel mysql-devel firewall-config firewall-applet
'

mkdir -p $HOME/Torrents/inProgress
mkdir -p $HOME/Documents/personnal
mkdir -p $HOME/Documents/git_repo
