FROM node:14.18.0

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --only=production

COPY . .

EXPOSE 3000

CMD [ "npm", "start" ]