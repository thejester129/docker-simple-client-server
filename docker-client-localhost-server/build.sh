

python3 server.py &

docker run --name client --rm -v $PWD:/build ubuntu bash /build/client.sh
