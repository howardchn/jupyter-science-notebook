FROM jupyter/minimal-notebook:latest

ENV GRANT_SUDO "yes"
USER root

RUN sudo apt-get update && \
    apt-get install --no-install-recommends -y gcc g++ && \
    apt-get clean && \
    pip install numpy scipy pandas fbprophet