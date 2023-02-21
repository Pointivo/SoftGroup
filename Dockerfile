FROM pytorch/pytorch:1.9.0-cuda10.2-cudnn7-devel

RUN apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/cuda/repos/ubuntu1804/x86_64/3bf863cc.pub && apt-key adv --fetch-keys https://developer.download.nvidia.com/compute/machine-learning/repos/ubuntu1804/x86_64/7fa2af80.pub

RUN apt update && \
    apt-get install -y git libsparsehash-dev \

# run the following commands after running the docker with nvidia-docker run

# RUN conda install cudatoolkit && \
#    pip install spconv-cu102 && \
#    pip install -r requirements.txt && \
#    python setup.py build_ext develop
