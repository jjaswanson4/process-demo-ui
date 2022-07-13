FROM registry.redhat.io/ubi9/nodejs-16:latest

COPY package.json .

RUN npm install --only=production

COPY settings.js /data/settings.js

COPY flows.json /data/flows.json

ENV PORT=1881

EXPOSE 1881

CMD ["npm", "start"]
