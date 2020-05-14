FROM node:12

# set ssh key
ARG SSH_KEY
RUN mkdir -p /root/.ssh && \
    chmod 700 /root/.ssh && \
    ssh-keyscan bitbucket.org > /root/.ssh/known_hosts && \
    echo "${SSH_KEY}" > /root/.ssh/id_rsa && \
    chmod 600 /root/.ssh/id_rsa

# create app directory
WORKDIR /usr/src/app

# install dependencies
COPY package*.json ./
RUN npm install && npm install -g nodemon

# copy app source code
COPY . .

EXPOSE 3030
CMD ["npm", "start"]