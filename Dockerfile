FROM node:18

WORKDIR /backend

COPY package*.json ./

RUN npm install

COPY . .

ENV PORT=3002

EXPOSE 3002

HEALTHCHECK CMD curl --fail http://localhost:3002/api/health || exit 1  

CMD ["npm","start"]