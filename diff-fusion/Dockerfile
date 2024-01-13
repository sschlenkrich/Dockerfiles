from julia:1.6

RUN apt-get update \
 && DEBIAN_FRONTEND=noninteractive apt-get install -y \
   git \
   sudo \
   wget \
   vim \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/code

RUN git clone https://github.com/frame-consulting/DiffFusion.jl

CMD bash