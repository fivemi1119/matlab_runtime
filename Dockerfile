FROM ubuntu:trusty

MAINTAINER yuan liu <2301794925@qq.com>

#anzhuang python d xiangguan yilai

RUN apt-get update

RUN apt-get install -y python-dev python-setuptools python-numpy python-scipy zlib1g-dev python-nose python-matplotlib

RUN easy_install pip

RUN apt-get install -y libpng-dev libfreetype6-dev pkg-config 

RUN apt-get install -y zip python-vtk

RUN mkdir /mcr-install

WORKDIR /mcr-install

#xiazai matlab runtime

RUN apt-get install -y wget

RUN wget -nv http://www.mathworks.com/supportfiles/downloads/R2016a/deployment_files/R2016a/installers/glnxa64/MCR_R2016a_glnxa64_installer.zip

RUN unzip MCR_2016a_glnxa64_installer.zip
