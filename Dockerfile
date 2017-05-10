FROM node:6

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies

# Bundle app source
COPY index.html /usr/src/app

EXPOSE 8080

#CMD [ "npm", "start" ]