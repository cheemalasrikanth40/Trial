DOCKER IMAGE FOR MAGENTO VERSION 2.3.7 

To Run this docker Image you need :

    • Docker (To run Docker Image) 
      apt install docker.io
    • Git (To Clone the Dockerfile from Gitlab)
      apt install git 

After building docker image from this dockerfile you’ll get:


 For Magento 2.3.7
SERVICES
VERSIONS
Composer
1.10.22
Elastisearch
7.9.0
Maridb
10.3.29
Php
7.4.26
RabbitMq
3.8.34
Redis
6.0.16
Varnish
6.5.0
Nginx
1.18

Steps you need to Follow:

Step1- Clone this Repository From Gitlab to your local
      Copy the https url go in terminal and do git clone <url>

Step2- Go Inside the Directory you got after Cloning and run 
             docker build -t imagename .

Step3-  After building Image successfully Run the docker container.
            docker run -itd  --name containername image name

Step4- Go inside Docker container and check the services
              docker exec -it containername sh  
             


You can check the services versions by:
composer -V
curl http://localhost:9200
redis-cli --version
php -v
mysql -V
/usr/share/rabbitmq-server/sbin/rabbitmqctl --version
varnishd -V
nginx -v

If you  want to install magento then all you need run the script.sh file you will see in root path and run it with sh script.sh ,it will ask for magento version give the version and it will proceed automatically.
Once its completed just go in local in etc/hosts file and add your container IP and URL ,In script sample url is given as pharmastaging.local.com
