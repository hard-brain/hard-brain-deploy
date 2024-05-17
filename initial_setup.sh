#!/bin/bash

initial_setup() {
    read -p 'Enter Discord API token: ' -s discord_token
    echo "DISCORD_TOKEN=${discord_token}" >> discord_token.env
    echo "POSTGRES_PASSWORD=<your password here>" >> postgres_password.env
}

initial_setup
