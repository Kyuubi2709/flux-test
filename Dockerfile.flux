FROM node:16-slim

WORKDIR /app
COPY . /app
RUN apt-get update && apt-get install -y git
RUN yarn install
RUN npm run build

CMD npm run start
EXPOSE 3000