FROM node:20
# taking node:20 as a base image for this image

WORKDIR /app
# set working directory inside container

COPY . .
# copying source code from current directory(testapp) to container's working directory(/app)

EXPOSE 3000
# Exposing port means this port is accessible to other containers or the host system.

RUN npm install   
# to install node modules to run the application.

CMD [ "npm","start" ]
# This command will be executed when you execute "docker run" command to create container from an image.
# There should have only one CMD command in Dockerfile.
# CMD command is written at the last of the Dockerfile
