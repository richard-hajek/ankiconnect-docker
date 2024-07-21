# AnkiConnect Docker container

## Quickstart

> Make sure Anki is installed on your computer, you are logged in AND you have AnkiConnect addon installed.

```bash

# Download this repo
git clone https://github.com/richard-hajek/ankiconnect-docker.git
cd ankiconnect-docker

# Copy *YOUR* Anki settings and addons to the container
# This needs to be done only once
# Does not have to be the same computer as this docker will be runnig on
sudo cp -r ~/.local/share/Anki2 ~/.local/share/Anki ./config

# Copy AnkiConnect config file (enables access from outside Docker)
sudo cp ./config.json ./config/Anki2/addons21/2055492159/

# And fix permissions
sudo chown -R 911:911 ./config/Anki ./config/Anki2

# Run the service
docker-compose up
```

## Credits

- https://github.com/mlcivilengineer/anki-desktop-docker
- https://github.com/pnorcross/anki-desktop-docker
