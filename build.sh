docker network create client-server

docker run --name server --network client-server --rm -t -d -v $PWD:/build python python3 -u /build/server.py

docker run --name client --network client-server --rm -v $PWD:/build ubuntu bash /build/client.sh
 
docker network rm client-server