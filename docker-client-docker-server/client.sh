apt-get -qq update 
apt-get -qq install curl -y > /dev/null 

echo ""
echo Sending hello from client...
curl -s server:80