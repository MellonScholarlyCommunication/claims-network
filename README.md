# Claims Network Docker Service

## Run Docker Compose

```
docker compose up -d 
```

The metadata-server is now available at http://localhost:3001.

The zotero translation server is available at http://localhost:1969.

## Web interface

- Claims service: http://localhost:3000
- Metadata service: http://localhost:3001
- Claimbot service: http://localhost:3002
- Eventlog service: http://localhost:3003

## Export the claims

docker run --rm hochstenbach/rdf-generator:v0.0.1

## Stop Docker Compose

```
docker compose down
```

