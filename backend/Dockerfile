FROM node:18-alpine

# Installing libvips-dev for sharp Compatibility
RUN apk update && apk add --no-cache build-base gcc autoconf automake zlib-dev libpng-dev nasm bash vips-dev
ENV NODE_ENV production

WORKDIR /opt/app
COPY ./package.json ./yarn.lock ./
RUN yarn config set network-timeout 600000 -g && yarn install --frozen-lockfile

COPY ./ .
RUN yarn build
EXPOSE 1337

COPY ./strapi-export.tar.gz .

CMD ["yarn", "deploy"]
