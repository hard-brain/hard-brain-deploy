#!/bin/bash

clone_repositories() {
	echo "Cloning reposititories..."

    git clone https://github.com/hard-brain/hard-brain-api.git
    git clone https://github.com/hard-brain/hard-brain-bot.git

    echo "Cloning completed."
}

clone_repositories
