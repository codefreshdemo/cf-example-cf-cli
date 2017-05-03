FROM node:latest

ADD build-all.sh build-all.sh
RUN npm install -g @codefresh-io/cf-cli
RUN chmod +x build-all.sh
CMD sh ./build-all.sh