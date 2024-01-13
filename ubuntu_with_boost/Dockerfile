FROM ubuntu:latest

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
   autoconf \
   automake \
   build-essential \
   ccache \
   clang \
   cmake \
   git \
   libboost-all-dev \
   libbz2-dev \
   libtool \
   python3 \
   python3-dev \
   python3-pip \
   sudo \
   swig \
   wget \
   vim \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/code

# install nosetests to run ORE examples
RUN sudo pip install nose

# install required python packages to run examples
RUN pip install \
   datacompy \
   matplotlib \
   nose_xunitmp \
   numpy \
   pandas

COPY init.sh /usr/src/code

CMD bash