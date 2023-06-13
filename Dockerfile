FROM docker.io/library/node:18.16.0 as build
RUN mkdir /peer-server
WORKDIR /peer-server
COPY . ./
ENV PORT 9000
EXPOSE ${PORT}
ENTRYPOINT ["node", "peerjs.js"]
