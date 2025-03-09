# Claims Network Docker Service

## Run Docker Compose

```
docker compose up -d 
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
docker compose down
```

