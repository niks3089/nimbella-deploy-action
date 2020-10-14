FROM node:10.16

RUN npm install -g https://apigcp.nimbella.io/downloads/nim/nimbella-cli.tgz
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
