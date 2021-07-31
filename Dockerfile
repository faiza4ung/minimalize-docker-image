FROM node:16.6.0-alpine as build

WORKDIR /app
COPY package.json index.js ./
RUN npm i

FROM alpine
WORKDIR /app
COPY --from=build /app /app/

CMD ["npm", "start"]