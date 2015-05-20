FROM node:latest
MAINTAINER Vangie Du from Coding IDE Team <duwan@coding.net>

EXPOSE 80

ADD *.json index.* ./

RUN npm install && node_modules/.bin/bower install --allow-root

CMD ["npm", "start"]