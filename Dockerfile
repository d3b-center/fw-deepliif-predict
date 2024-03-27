#############################################
## based on: https://github.com/nadeemlab/DeepLIIF/blob/main/Dockerfile
FROM nvidia/cuda:11.1.1-cudnn8-devel-ubuntu18.04

RUN apt-get update -y && \
    apt-get install -y \
    gcc git wget \
    ffmpeg libsm6 libxext6 default-jdk \
    python3.8 python3.8-dev python3-pip

RUN wget https://bootstrap.pypa.io/get-pip.py && python3.8 get-pip.py

# install requirements for API
COPY cli.py cli.py
COPY deepliif deepliif
COPY setup.py setup.py
COPY README_deepliif.md README_deepliif.md

RUN pip install numpy==1.21.5
RUN pip install .

#############################################
# Setup default flywheel/v0 directory
ENV FLYWHEEL=/flywheel/v0
RUN mkdir -p ${FLYWHEEL}
WORKDIR ${FLYWHEEL}
COPY run ${FLYWHEEL}/run
COPY manifest.json ${FLYWHEEL}/manifest.json
COPY DeepLIIF_Latest_Model ${FLYWHEEL}/DeepLIIF_Latest_Model

#############################################
# Configure entrypoint
RUN chmod a+x /flywheel/v0/run
ENTRYPOINT ["/flywheel/v0/run"]
