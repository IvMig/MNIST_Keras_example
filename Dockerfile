FROM continuumio/anaconda3

RUN apt-get update && apt-get install --assume-yes apt-utils
RUN apt install htop
RUN conda install -c anaconda numpy
RUN conda install -c conda-forge tensorflow
RUN conda install -c conda-forge keras

ENV HOME /notebooks

# Make sure the contents of our repo are in ${HOME}
COPY . ${HOME}

WORKDIR /notebooks

