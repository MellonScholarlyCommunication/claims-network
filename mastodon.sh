#!/bin/bash

docker run --rm \
           --env-file .env \
           -v `pwd`/claimbot-server/accepted:/app/inbox \
          -it hochstenbach/mastodon-cli:v0.0.1 \
          "$@" --account-id "http://localhost:3002/profile/card#me" 