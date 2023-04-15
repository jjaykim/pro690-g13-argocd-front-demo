# Base image to use
FROM node:16.14@sha256:68e34cfcd8276ad531b12b3454af5c24cd028752dfccacce4e19efef6f7cdbe0 AS dependencies

WORKDIR /app

# copy dep files
COPY package*.json .

# Install only production dependencies defined in package-lock.json
RUN npm ci 

#########################################################

FROM node:16.13.2-bullseye@sha256:bd4b75b1522c00aae61a0afea45afedadee4f92d09be1b9a2e8ca4b937f34186 AS builder

WORKDIR /app

# Copy cached dependencies from previous stage so we don't have to download
COPY --from=dependencies /app /app

# copy all of the project source into the image
COPY . .

RUN npm run build

#########################################################
# NGINX STAGE
#########################################################

FROM nginx:stable-alpine@sha256:f9514712d6b8e29c57db7c5f83750fd0b5e2150c8ea983a1497704b39a7f0835 AS deploy

WORKDIR /usr/share/nginx/html/

COPY --from=builder /app/build ./

CMD [ "nginx", "-g", "daemon off;" ]