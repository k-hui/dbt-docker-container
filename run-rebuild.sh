# M1 fix for error "scram authentication requires libpq version 10 or above"
export DOCKER_DEFAULT_PLATFORM=linux/amd64

docker-compose down
docker rmi dbt-server
docker-compose up -d
