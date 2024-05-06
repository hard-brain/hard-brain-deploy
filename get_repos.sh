#!/bin/bash

clone_repositories() {
	echo "Cloning reposititories..."

    git clone https://github.com/hard-brain/hard-brain-api.git
    git clone https://github.com/hard-brain/hard-brain-bot.git

    echo "Creating empty discord_token.env and postgres_password.env"
    echo "DISCORD_TOKEN=" >> discord_token.env
    echo "POSTGRES_PASSWORD=" >> postgres_password.env
}

clone_repositories
