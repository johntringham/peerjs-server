FROM docker.io/library/node:18.16.0-alpine as production
RUN mkdir /app
WORKDIR /app
COPY . ./
ENV PORT 8000
EXPOSE ${PORT}
#ENTRYPOINT ["node", "./dist/peerjs.js"]
CMD ["npm", "start"]