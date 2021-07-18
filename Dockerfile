FROM node:8-slim@sha256:6f47d69e8deac79b425d3f5d49ee0f804dbfb07bfc0f8ee8688c1bff0fb50448

WORKDIR /starter
ENV NODE_ENV development

COPY package.json /starter/package.json

RUN npm install --production

COPY .env.example /starter/.env.example
COPY . /starter

CMD ["npm","start"]

EXPOSE 8080
