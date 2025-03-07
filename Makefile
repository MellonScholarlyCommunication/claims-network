.PHONY: clean demo

demo1:
	cp ./data/demo1.jsonld ./claimbot-server/accepted

demo2:
	cp ./data/demo2.jsonld ./claimbot-server/accepted

clean:
	find ./claimbot-server/accepted -type f -exec rm {} \;
	find ./claimbot-server/error -type f -exec rm {} \;
	find ./claimbot-server/inbox -type f -exec rm {} \;
	find ./claimbot-server/outbox -type f -exec rm {} \;
	find ./metadata-server/error -type f -exec rm {} \;
	find ./metadata-server/inbox -type f -exec rm {} \;
	find ./metadata-server/outbox -type f -exec rm {} \;
