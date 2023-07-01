FROM alpine:latest
COPY ./personal.yml /usr/local/bin
ADD ./.ssh/ /usr/local/bin/.ssh/
ADD ./tasks/ /usr/local/bin/tasks/
RUN apk add ansible git bash alpine-sdk shadow
