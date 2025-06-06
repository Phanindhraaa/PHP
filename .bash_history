exit
clear
cd PHP
cd www
ls
nano index.php 
cd ..
nano Dockerfile 
nano docker-compose.yml 
cd nginx
touch default.conf
nano default.conf 
ls
cd ..
sudo chmod -R 777
sudo chmod -R 777 PHP
ls
cd PHP
ls
docker-compose up -d --build
sudo usermod -aG docker $USER
docker ps
sudo reboot
docker ps
sudo usermod -aG $USER
docker ps
clear
mkdir PHP
cd PHP
touch Dockerfile
touch docker-compose.yml
ls
mkdir www
mkdir nginx
ls
cd www
touch index.php
ls
clear
docker ps
cd PHP
docker-compose up -d --build
l
cd nginx/
l
cd
uname
umask
ip a
man fork
clear
docker ps
cd PHP
cd www
nano index.php 
clear
docker login -u phanindhrasura
docker push phanindhrasura/php-app:latest
git init
git remote add origin https://github.com/Phanindhraaa/PHP.git
git add .
git commit -m "Initial commit: PHP Yii2 with Docker Swarm, Ansible & CI/CD"
git push -u origin main
git branch -m main
git push -u origin main
git pull origin main --allow-unrelated-histories
git push -u origin main
