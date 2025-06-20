.PHONY: clean demo start start-dev stop

demo1:
	cp ./data/demo1.jsonld ./claimbot-server/accepted

demo2:
	cp ./data/demo2.jsonld ./claimbot-server/accepted

start:
	COMPOSE_PROFILES=base,archiver,claimbot,metadata,claimlog docker compose up

start-dev:
	COMPOSE_PROFILES=base,archiver,metadata,claimlog docker compose up

stop:
	docker compose down	

clean:
	rm -f ./archiver-server/inbox/* ; \
	rm -f ./archiver-server/error/* ; \
	rm -f ./archiver-server/tmp/* ; \
	rm -f ./claimbot-server/accepted/* ; \
	rm -f ./claimbot-server/inbox/* ; \
	rm -f ./claimbot-server/outbox/* ; \
	rm -f ./claimbot-server/error/* ; \
	rm -f ./claimlog-server/inbox/* ; \
	rm -f ./claimlog-server/error/* ; \
	rm -f ./claimlog-server/tmp/* ; \
	rm -f ./metadata-server/inbox/* ; \
	rm -f ./metadata-server/oubox/* ; \
	rm -f ./metadata-server/error/* 
