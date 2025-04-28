# Claims Network Docker Service

This is a Dockerized version of an implementation of the [Claims Network](https://spec.knows.idlab.ugent.be/claims-network/latest/).

Included in this Docker image as software components from the following projects:

- [mastodon-bot](https://github.com/MellonScholarlyCommunication/mastodon-bot) : a claim bot
- [mastodon-cli](https://github.com/MellonScholarlyCommunication/mastodon-cli) : a command line mastodon client
- [metadata-server](https://github.com/MellonScholarlyCommunication/metadata-server) : a summarizer service provider
- [evenlog-server](https://github.com/MellonScholarlyCommunication/eventlog-server) : an activity log service provider
- [eventlog-cli](https://github.com/MellonScholarlyCommunication/eventlog-cli) : a command line activity log client
- [rdf-generator](https://github.com/MellonScholarlyCommunication/rdf-generator) : an RDF generator for CSL (Citation Style Language) files
- [verification-server](https://github.com/MellonScholarlyCommunication/verification-server) : a demonstrator verification service
- [wikijs-cli](https://github.com/MellonScholarlyCommunication/wikijs-cli) : a command line Wiki.js client


## Run Docker Compose

```
make start
```

## Web interface

- Dashboard : http://localhost 
- Claims service: http://localhost:3000
- Metadata service: http://localhost:3001
- Claimbot service: http://localhost:3002
- Eventlog service: http://localhost:3003

## Generate a claim via the command line

./mastodon.sh generate "https://nos.nl/artikel/2558648-kabinet-lobbyt-voor-nederlandse-vervanger-van-russische-kunstmest"

## Export the claims

docker run --rm hochstenbach/rdf-generator:v0.0.1

## Stop Docker Compose

```
make stop
```

