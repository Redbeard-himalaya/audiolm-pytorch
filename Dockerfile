FROM nvidia/cuda:11.7.0-devel-ubuntu22.04

WORKDIR /app

RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y python3-pip wget && \
    pip3 install scikit-learn==0.24.0 tensorboardX==2.6 audiolm-pytorch==0.23.5

