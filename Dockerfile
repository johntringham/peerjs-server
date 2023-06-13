FROM docker.io/library/node:18.16.0-alpine as production
ENV PORT 9000
EXPOSE ${PORT}
ENTRYPOINT ["node", "./dist/peerjs.js"]
