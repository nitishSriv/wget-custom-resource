FROM alpine:3.12

RUN apk add --no-cache bash wget jq

RUN mkdir -p /opt/resource

ADD assets/check /opt/resource/check
ADD assets/in /opt/resource/in
#ADD assets/out /opt/resource/out

# Make resource scripts executable
RUN chmod +x /opt/resource/*
