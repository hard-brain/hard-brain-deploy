# hard-brain-deploy
A repository within which to clone Hard Brain's services and deploy with Docker Compose

# Usage  

1. Clone this repo
2. Run initial_setup.sh to create required .env files
3. For production, run `docker compose -f compose-prod.yml up -d`. For development, clone the repos hard-brain-bot and hard-brain-api to the folder of this repo and run `docker compose -f compose-dev.yml up --build`.
