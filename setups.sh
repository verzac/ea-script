# install docker
apt-get remove -y docker docker-engine docker.io;
apt-get update;
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common;
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -;
apt-key fingerprint 0EBFCD88;
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable";
apt-get update;
apt-get install docker-ce -y;

## WP-DOCKER
docker run --name wordpresscontainer -p 8081:80 -d wordpress:latest;

# nginx config
apt-get remove -y nginx;
apt-get update;
apt-get install nginx -y;
cp ./defaultsites /etc/nginx/sites-available/default;
systemctl restart nginx;

echo "Please setup RDS and connect it to WP. Thanks!";
echo "Site URL: http://url.com/";
