.PHONY: clean demo start start-dev stop

demo1:
	cp ./data/demo1.jsonld ./claimbot-server/accepted

demo2:
	cp ./data/demo2.jsonld ./claimbot-server/accepted

rdf:
	docker run --rm hochstenbach/rdf-generator:v0.0.1 > export.jsonld

start:
	COMPOSE_PROFILES=base,archiver,claimbot,metadata docker compose up

start-dev:
	COMPOSE_PROFILES=base,archiver,metadata docker compose up

stop:
	docker compose down	

clean:
	find ./claimbot-server/accepted -type f -exec rm {} \;
	find ./claimbot-server/error -type f -exec rm {} \;
	find ./claimbot-server/inbox -type f -exec rm {} \;
	find ./claimbot-server/outbox -type f -exec rm {} \;
	find ./metadata-server/error -type f -exec rm {} \;
	find ./metadata-server/inbox -type f -exec rm {} \;
	find ./metadata-server/outbox -type f -exec rm {} \;
