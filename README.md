# hard-brain-deploy
A repository within which to clone Hard Brain's services and deploy with Docker Compose

# Usage  

1. Clone this repo
2. Run initial_setup.sh to create required .env files
3. For production, run `docker compose up -f compose-prod.yml -d`. For development, just run `docker compose up`.
