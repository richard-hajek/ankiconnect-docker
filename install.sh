#!/usr/bin/env bash

read -p "You must first: a) Have Anki installed b) Be logged in c) Have AnkiConnect installed. Anki does not have to be running. Press enter to continue....   "

sudo cp -r ~/.local/share/Anki2 ~/.local/share/Anki ./config
sudo cp ./config.json ./config/Anki2/addons21/2055492159/

for addon in ./config/Anki2/addons21/*; do
    addon_code=$(basename $addon)
    [[ $addon_code == "2055492159" ]] && continue
    sudo rm -rfI $addon
done

sudo chown -R 911:911 ./config/Anki ./config/Anki2
