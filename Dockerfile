# syntax=docker/dockerfile:1
FROM node:16-alpine3.14
WORKDIR /app
COPY ./package.json .
COPY ./package-lock.json .
RUN npm ci 
#npm ci is npm install but from package-lock

COPY . .
RUN npm run build
CMD ["npm", "start"]
#CMD ["/bin/sh"]

#docker build -t medium-sanity-app .
#docker run -it -p 3000:3000 medium-sanity-app
