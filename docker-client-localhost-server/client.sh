apt-get -qq update 
apt-get -qq install curl -y > /dev/null 

echo ""
echo Sending hello from client...
curl -s host.docker.internal:1234