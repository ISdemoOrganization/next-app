# base image
FROM node:14.17.4-alpine

WORKDIR /workdir

COPY package.json .
COPY yarn.lock .

RUN yarn install

COPY pages pages
COPY public public
COPY styles styles
COPY version version
COPY .eslintrc.json .
COPY next.config.js .

RUN yarn build

CMD ["yarn", "start"]