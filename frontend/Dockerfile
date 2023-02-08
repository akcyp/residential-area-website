FROM node:16-alpine
WORKDIR /srv/app

COPY ./package*.json ./
RUN npm ci

COPY ./ ./
RUN npm run build

ENV NODE_END=production
ENV NUXT_HOST=0.0.0.0

CMD ["npm", "run", "start"]
