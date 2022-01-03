FROM node:14-alpine
WORKDIR /usr/app

COPY ["./package*.json", "./yarn.lock", "./"]
RUN yarn install --frozen-lockfile

COPY . .
RUN yarn build

CMD ["yarn", "develop"]