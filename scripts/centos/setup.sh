#!/bin/sh

#meant to be run as root

USERNAME=''
PASSWD=''

RPMFORGEPKG='rpmforge-release-0.5.2-2.el6.rf.x86_64.rpm'
RPMFORGEADDR='http://packages.sw.be/rpmforge-release/'

EPELPKG='epel-release-6-7.noarch.rpm'
EPELADDR='http://dl.fedoraproject.org/pub/epel/6/x86_64/'

REMIPKG='remi-release-6.rpm'
REMIADDR='http://rpms.famillecollet.com/enterprise/'

yum update
yum -y groupinstall "Development Tools"
yum -y install ntp wget
ntpdate pool.ntp.org

#install rpmforge repos
wget $RPMFORGEADDR$RPMFORGEPKG
rpm --import http://apt.sw.be/RPM-GPG-KEY.dag.txt
rpm -K $RPMFORGEPKG
rpm -i $RPMFORGEPKG

#install EPEL repos
wget $EPELADDR$EPELPKG
rpm -i $EPELPKG

#install remi repo (PHP)
wget $REMIADDR$REMIPKG
rpm -i $REMIPKG

yum -y install curl htop screen java-1.7.0-openjdk gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel openssl-devel mysql mysql-devel emacs-nox mysql-server

#adduser $USERNAME
#passwd $PASSWD
#usermod -G wheel $USERNAME

mkdir -p /home/shared/downloads/inprogress
mkdir -p /home/shared/backup
mkdir -p /home/shared/share/movies
mkdir -p /home/shared/share/series
mkdir -p /home/shared/share/music
