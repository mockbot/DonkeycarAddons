FROM ubuntu:18.04

RUN echo Etc/UTC > /etc/localtime

RUN apt-get update && apt-get install -y \
  ntp \
  build-essential \
  apt-utils \
  git \
  python3-dev \
  python3-pip \
  python3-docopt \
  python3-pandas \
  python3-opencv \
  python3-h5py \
  libhdf5-serial-dev \
  hdf5-tools \
  net-tools \
  vim
  
RUN mkdir -p /DonkeyGarage/install

RUN git clone https://github.com/autorope/donkeycar /DonkeyGarage/install/donkeycar
RUN python3 -m pip install -e /DonkeyGarage/install/donkeycar

RUN git clone https://github.com/tawnkramer/gym-donkeycar /DonkeyGarage/install/gym-donkeycar
RUN python3 -m pip install -e /DonkeyGarage/install/gym-donkeycar

RUN mkdir /DonkeyGarage/model
COPY racer.py /DonkeyGarage/racer.py
COPY test_client.py /DonkeyGarage/test_client_m17.py
COPY lane_keeper.h5 /DonkeyGarage/model/lane_keeper.h5
COPY speed30.h5 /DonkeyGarage/model/speed30.h5

RUN python3 -m pip install --upgrade pip setuptools numpy

RUN python3 -m pip install tensorflow==1.15

