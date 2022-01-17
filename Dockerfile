FROM ubuntu:18.04
MAINTAINER "Marcel Gietzmann-Sanders" "marcelsanders96@gmail.com"

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get -y install build-essential

# add python and libraries
RUN apt-get -y install python3.6 && \
	apt-get -y install python3-pip && \
	pip3 install --upgrade setuptools pip
RUN echo "alias python=python3.6" >> /root/.bashrc

# add jupyter lab
RUN pip install jupyterlab==1.2.6

# add git, vim and curl
RUN apt-get -y install git vim curl
