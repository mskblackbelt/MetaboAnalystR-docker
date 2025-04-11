# docker build -t metab_docker .
# docker run -ti --rm  --name metab_docker_container\
#   -p 127.0.0.1:8787:8787 \
#   -v $(pwd):/home/rstudio \
#   -e DISABLE_AUTH=true \
#   metab_docker
docker compose up