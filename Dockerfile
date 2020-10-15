FROM nimbella/action-nodejs-v10:nightly

COPY entrypoint.sh /entrypoint.sh
ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH=$PATH:/home/node/.npm-global/bin
USER node
RUN npm install -g https://apigcp.nimbella.io/downloads/nim/nimbella-cli.tgz
USER root

ENTRYPOINT ["/entrypoint.sh"]
