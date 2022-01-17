FROM node:14-alpine
WORKDIR /srv/app

COPY ./package*.json ./
RUN npm ci

COPY ./ ./
RUN npm run build

ENV NUXT_HOST=0.0.0.0

CMD ["npm", "run", "start"]
