FROM node:20.5.1-alpine3.18

COPY PYRET_* /tmp/
RUN npm install -g pyret-npm@$(cat /tmp/PYRET_VERSION)
