ARG BASE_TAG=master
FROM signalk/signalk-server:$BASE_TAG

COPY signalk /home/node/.signalk
WORKDIR /home/node/.signalk
RUN npm install --only=production
WORKDIR /home/node/signalk

RUN setcap 'cap_net_bind_service=+ep' /usr/local/bin/node

EXPOSE 80
ENTRYPOINT /home/node/signalk/bin/signalk-server
