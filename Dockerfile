FROM node:latest
MAINTAINER Vangie Du from Coding IDE Team <duwan@coding.net>

RUN apt-get update && apt-get install -y wget && \
	apt-get install -y sysstat golang gcc && \
	apt-get install -y git vim curl traceroute && \
	apt-get clean

EXPOSE 80

VOLUME ["data","data1","data2"]

ADD *.json index.* ./

RUN npm install && node_modules/.bin/bower install --allow-root

CMD ["npm", "start"]