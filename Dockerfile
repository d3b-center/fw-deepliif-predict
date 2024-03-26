# Creates docker container

#############################################
# Select the OS
#FROM python:3.8.10-slim-buster
FROM python:3.8.19-slim

#############################################
RUN pip3 install deepliif

#############################################
# Setup default flywheel/v0 directory
ENV FLYWHEEL=/flywheel/v0
RUN mkdir -p ${FLYWHEEL}
WORKDIR ${FLYWHEEL}
COPY run ${FLYWHEEL}/run
COPY manifest.json ${FLYWHEEL}/manifest.json
RUN cp -r DeepLIIF_Latest_Model ${FLYWHEEL}/DeepLIIF_Latest_Model

#############################################
# Configure entrypoint
RUN chmod a+x /flywheel/v0/run
ENTRYPOINT ["/flywheel/v0/run"]
