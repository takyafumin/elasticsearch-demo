FROM node:lts-alpine3.13

RUN apk add bash git
RUN mkdir /work \
 && cd /work \
 && git clone https://github.com/mobz/elasticsearch-head.git \
 && cd elasticsearch-head \
 && npm install

WORKDIR /work/elasticsearch-head
CMD ["npm", "run", "start"]

