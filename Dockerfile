# Buid image from base image with FROM
FROM node:21-alpine

# Copy specific file or copy files and directories put into "/app/" in container
COPY package.json /app/
COPY src /app/

# Sets the working directory for all following commands
WORKDIR /app

# Run npm insatll in container to get all nodemodule
RUN npm install

# CMD is the instruction that is to be executed when a Docker container starts
CMD ["node", "app.js"]