FROM node:latest

ENV GIT_REPO=https://github.com/alvaro980/JavaScript.git
ENV MONDB_URI=mongodb://localhost/javaScriptDB
ENV PORT=3000
ENV APP_HOME=/home/app

RUN apt-get update && \
    apt-get install -y git \
    apt-get install nano

RUN mkdir ${APP_HOME}
WORKDIR ${APP_HOME}
RUN git clone ${GIT_REPO}
WORKDIR ${APP_HOME}/JavaScript

RUN npm install

EXPOSE ${PORT}

CMD [ "npm","run","dev" ]
