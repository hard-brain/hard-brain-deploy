#!/bin/bash

initial_setup() {
	echo "Cloning reposititories..."

    git clone https://github.com/hard-brain/hard-brain-api.git
    git clone https://github.com/hard-brain/hard-brain-bot.git

    echo "Creating empty discord_token.env and postgres_password.env - please edit as appropriate"
    echo "DISCORD_TOKEN=" >> discord_token.env
    echo "POSTGRES_PASSWORD=" >> postgres_password.env

    echo "Downloading songs..."
    NEXTCLOUD_URL='https://corndog.galaxy.usbx.me/nextcloud/public.php/webdav/'
    NEXTCLOUD_SHARE_ID='Q56JdfDpy8GMocd'
    OUTPUT_ZIP='songs.zip'

    read -p 'Enter download link password: ' -s nextcloud_download_pw
    curl -u "$NEXTCLOUD_SHARE_ID:$nextcloud_download_pw" -H "X-Requested-With: XMLHttpRequest" $NEXTCLOUD_URL -o $OUTPUT_ZIP
    if 7z x -o./hard-brain-api/src/resources/songs $OUTPUT_ZIP; then
        echo "Successfully downloaded and extracted songs to ./hard-brain-api/src/resources/songs"
    else
        echo "Error: was unable to download/extract songs"
    fi
}

initial_setup
