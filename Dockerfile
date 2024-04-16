FROM nvidia/cuda:12.4.1-devel-ubuntu22.04
RUN apt-get update
RUN apt-get install -y python3.11 curl python3-distutils git
RUN ln -s /usr/bin/python3.11 /usr/bin/python
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python get-pip.py
RUN mkdir /deepcube
COPY ./ /deepcube
WORKDIR /deepcube
RUN pip install matplotlib && \
    pip install numpy && \
    pip install torch