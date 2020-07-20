FROM toyoshim/c9-202007:latest
WORKDIR /home/ubuntu
ARG DEBIAN_FRONTEND=noninteractive

RUN apt install python

RUN git clone https://github.com/emscripten-core/emsdk.git

WORKDIR /home/ubuntu/emsdk
RUN ./emsdk install latest
RUN ./emsdk activate latest

WORKDIR /c9
CMD [ "node", "server.js", "-p", "8080", "--listen", "0.0.0.0", "-w", "/home/ubuntu/", "-a", ":" ]
EXPOSE 8080
