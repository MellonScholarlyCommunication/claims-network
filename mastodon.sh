#!/bin/bash

if [ "$1" == "generate" ]; then
     docker run --rm \
           --env-file .env \
           -v `pwd`/claimbot-server/accepted:/app/inbox \
           -it hochstenbach/mastodon-cli:v0.0.1 \
           "$@" --account-id "http://host.docker.internal:80/mastodon/alsvanouds/index.html" \
                --account-name "Fetze Alsvanouds"
else
     docker run --rm \
           --env-file .env \
           -v `pwd`/claimbot-server/accepted:/app/inbox \
           -it hochstenbach/mastodon-cli:v0.0.1 \
           "$@" 
fi

