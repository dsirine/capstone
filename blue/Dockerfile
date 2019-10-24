FROM node:alpine

RUN mkdir /app
WORKDIR /app

COPY package.json /app/
RUN npm install --only=production

COPY . /app 

EXPOSE 3006

CMD [ "npm", "start" ]
