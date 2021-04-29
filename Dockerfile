FROM debian:buster-slim                                                                          

RUN apt-get update && apt-get install -y --no-install-recommends \
    	    build-essential \
	    pkg-config \
	    gfortran \
	    libatlas-base-dev \
	    fonts-lyx \
	    libfreetype6-dev \
	    libpng-dev \
	    sudo \
	    python3 \
	    python3-pip \
	    python3-setuptools\
	    python3-dev\
	    imagemagick\
	    wget
	    
RUN apt-get update && apt-get install -y --no-install-recommends \
      build-essential \
      pkg-config \
      gfortran \
      libatlas-base-dev \
      fonts-lyx \
      libfreetype6-dev \
      libpng-dev \
      python3 \
      python3-dev \
      python3-pip \
      python3-tk \
      tk-dev \
      sudo \
      imagemagick && \
    rm -rf /var/lib/apt/lists/*
    
RUN pip3 install -U nltk
RUN pip3 install -U flair
RUN pip3 install -U transformers
RUN pip3 install -U pandas
RUN pip3 install -U biopython
RUN pip3 install -U torch
RUN pip3 install -U torchvision
RUN pip3 install -U tensorflow
RUN pip3 install -U scikit-learn
RUN pip3 install -U scipy
RUN pip3 install -U matplotlib
RUN pip3 install -U ipdb



RUN echo 'alias python=python3' >> ~/.bashrc
