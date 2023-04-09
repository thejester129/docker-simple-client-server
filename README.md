# docker-simple-client-server

Occam's razor of basic docker networking

`./build.sh` in each directory runs the example of client communicating with a server

## docker-client-docker-server

client and server in separate dockers

the magic that lets them communicate is a docker network which joins the two containers together

`docker network create client-server`

and using the name of the recepient container (`--name`) to send requests (`curl -s server:80`) from client

## docker-client-localhost-server

another oft stumbled upon use case - a docker client trying to communicate with a service on localhost

by default docker will use a bridge network so the docker client cannot simply call localhost as the docker localhost will not be the same as the pc localhost as they are on different networks

the magic here is `docker.host.internal` address - this will route to localhost on host machine
