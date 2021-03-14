FROM node:15.11.0-buster
MAINTAINER Paweł Klata <pawelklata@gmail.com>

COPY . /app
WORKDIR /app

# Install application dependencies
RUN npm install -g npm@7.6.3 && \
    npm install -g mocha@5.2.0 && \
    npm install

# Set mocha test runner as entrypoint
ENTRYPOINT ["mocha"]