deploy:
	sudo chown -R meowxiik:meowxiik ./config
	ssh docker.lan "cd composes/anki; sudo chown -R meowxiik:meowxiik ./config"
	rsync -r . meowxiik@docker.lan:composes/anki/
	sudo chown -R 911:911 ./config
	ssh docker.lan "cd composes/anki; sudo chown -R 911:911 ./config"
	ssh docker.lan "cd composes/anki; docker-compose up -d"
