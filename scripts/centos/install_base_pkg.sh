#!/bin/sh

yum update
yum -y groupinstall "Development Tools"
yum -y install ntp wget
ntpdate pool.ntp.org

yum -y install curl htop screen java-1.7.0-openjdk gcc-c++ patch readline readline-devel zlib zlib-devel libyaml-devel libffi-devel openssl-devel mysql mysql-devel emacs-nox mysql-server
