FROM node:latest

RUN apt-get update && apt-get -y upgrade && \
	apt-get install -y build-essential libsodium-dev

RUN git clone https://github.com/joshuayabut/node-open-mining-portal.git /z-nomp

WORKDIR /z-nomp

RUN npm update && npm install

CMD npm start
