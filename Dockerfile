FROM node:latest

RUN apt-get update && apt-get -y upgrade && \
	apt-get install -y build-essential libsodium-dev libboost-system-dev

RUN git clone --branch 1.0.5 https://github.com/joshuayabut/node-open-mining-portal.git /z-nomp

WORKDIR /z-nomp

EXPOSE 7932 8080 3000 3001 4000 4001

RUN npm update && npm install

CMD npm start
