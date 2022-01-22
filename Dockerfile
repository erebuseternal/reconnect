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
RUN pip install jupyterlab

# add git, vim and curl
RUN apt-get -y install git vim curl

# add the earth engine api
RUN pip install earthengine-api folium

RUN pip install pandas

RUN apt-get -y install libgdal-dev
RUN pip install geopandas

RUN apt-get -y install nodejs
RUN pip install plotly, ipywidgets

RUN pip install sqlalchemy, psycopg2

RUN pip install h3, colours, seaborn, scikit-learn