FROM strapi/base
WORKDIR /srv/app

COPY ["./package*.json", "./yarn.lock", "./"]
RUN yarn install --frozen-lockfile

ENV NODE_ENV production
RUN yarn build

CMD ["yarn", "start"]