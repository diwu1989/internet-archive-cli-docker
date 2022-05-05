FROM debian:11-slim
RUN apt update; \
    apt install curl python3-minimal python3-distutils -y; \
    apt clean
RUN cd /usr/local/bin; \
    curl -L https://archive.org/download/ia-pex/ia > ia; \
    chmod +x ia; \
    ./ia --version
