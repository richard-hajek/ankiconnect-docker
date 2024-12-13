# AnkiConnect Docker container

## Quickstart

> You must first: 
> a) Have Anki installed 
> b) Be logged in 
> c) Have AnkiConnect installed (Anki does not have to be running)

```bash

# Download this repo
git clone --recursive https://github.com/richard-hajek/ankiconnect-docker.git
cd ankiconnect-docker

# Copy *YOUR* Anki settings and addons to the container
# This needs to be done only once
# This needs to be done on the computer where you run Anki
# Afterwards, you can copy the 'config' folder in this directory to any computer and run it there
./install.sh

# Run the service
docker-compose up -d

# Test
curl 127.0.0.1:8765
```

## Credits

- https://github.com/mlcivilengineer/anki-desktop-docker
- https://github.com/pnorcross/anki-desktop-docker
