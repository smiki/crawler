#!/bin/sh

sudo systemctl stop firewalld

#php 7
sudo sh -c "echo '[zend-php7]' >> /etc/yum.repos.d/php7.repo"
sudo sh -c "echo 'name = PHP7 nightly by Zend Technologies' >> /etc/yum.repos.d/php7.repo"
sudo sh -c "echo 'baseurl = http://repos.zend.com/zend-server/early-access/php7/repos/centos/' >> /etc/yum.repos.d/php7.repo"
sudo sh -c "echo 'gpgcheck=0' >> /etc/yum.repos.d/php7.repo"

sudo yum install -y php7-nightly

sh -c "echo 'export PATH=/usr/local/php7/bin:\$PATH' >> ~/.bash_profile"
source ~/.bash_profile

#symfony
#sudo curl -LsS http://symfony.com/installer -o /usr/local/bin/symfony
#sudo chmod a+x /usr/local/bin/symfony
#cd /usr/local/bin/
#sudo symfony new crawler
#sudo chown -R vagrant:vagrant crawler/

sudo useradd -G wheel smiki

sudo yum install -y git