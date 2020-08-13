# 📡 PDS Engineering: GitHub Ping
# ===============================

FROM python:3.8.5-alpine3.12


# Metadata
# --------

LABEL "com.github.actions.name"="Git Ping"
LABEL "com.github.actions.description"="Pings (i.e., empty-commits) to a GitHub repository 3"
LABEL "com.github.actions.icon"="radio"
LABEL "com.github.actions.color"="orange"

LABEL "repository"="https://github.com/NASA-PDS/git-ping-action.git"
LABEL "homepage"="https://pds-engineering.jpl.nasa.gov/"
LABEL "maintainer"="Sean Kelly <kelly@seankelly.biz>"


# Image Details
# -------------

COPY entrypoint.sh /

RUN :\
    apk update &&\
    apk add --virtual .build gcc musl-dev openssl-dev libxml2-dev libxslt-dev libffi-dev &&\
    apk add libxml2 libxslt git &&\
    pip install pds-github-util &&\
    apk del .build &&\
    rm -rf /var/cache/apk/* &&\
    chmod +x /entrypoint.sh &&\
    :

ENTRYPOINT ["/entrypoint.sh"]
