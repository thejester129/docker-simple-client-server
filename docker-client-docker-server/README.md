client and server in separate dockers

the magic that lets them communicate is a docker network which joins the two containers together (docker network create client-server) and using the name of the recepient container (provided by --name) to send requests (curl -s server:80) from client
