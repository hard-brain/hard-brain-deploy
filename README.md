# hard-brain-deploy
A repository within which to clone Hard Brain's services and deploy with Docker Compose

# Usage  

1. Clone this repo
2. Run initial_setup.sh to create required .env files
3. Add required song files to a folder called `songs` and place it in this repo

To run using images hosted on Hard Brain's container registry (requires package:read permissions):  
`docker compose -f compose-prod.yml up -d`.  

To run using images built from source, clone the repos hard-brain-bot and hard-brain-api into this repo, then:  
`docker compose -f compose-dev.yml up --build`
