FROM alpine:3.11

ENV VERSION=0.1.0
ENV GITHUB_HEAD_REF = ""

ARG VERSION

# Github labels
LABEL "com.github.actions.name"="JISHIDA ACTION"
LABEL "com.github.actions.description"="JISHIDA PUSH"
LABEL "com.github.actions.icon"="command"
LABEL "com.github.actions.color"="black"

LABEL "repository"="https://github.com/funnyzak/jishida-action"
LABEL "homepage"="https://github.com/funnyzak"
LABEL "maintainer"="funnyzak <silenceace@gmail.com>"
LABEL "version"=$VERSION

RUN apk add --update --no-cache bash curl

# Copies your code file from your action repository to the filesystem path `/` of the container
ADD *.sh /

ADD action.yml /

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
