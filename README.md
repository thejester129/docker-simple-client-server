# docker-simple-client-server
Simplest way I could think of to test out docker networks with multiple containers

$ docker network create client-server

$ docker run --name server --network client-server --rm -t -d -v $PWD:/build python python3 -u /build/server.py

$ docker run --name client --network client-server --rm -v $PWD:/build ubuntu bash /build/client.sh

$ Sending hello from client...

$ Got response from server running on a separate docker! 
