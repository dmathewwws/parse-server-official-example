FROM node:argon

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

ENV APP_ID myAppId
ENV MASTER_KEY mySecretMasterKey
ENV FILE_KEY optionalFileKey
ENV DATABASE_URI mongodb://dmathewwws:or4dmdmuR6jekc@ds051645.mongolab.com:51645/parse-server-example
#ENV JAVASCRIPT_KEY javascriptKey
#ENV REST_API_KEY restAPIKey
#ENV CLIENT_KEY clientKey

EXPOSE 1337

CMD [ "npm", "start" ]
