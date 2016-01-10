#!/bin/bash

apt-get -y install nginx php5-fpm
apt-get -y install curl
apt-get -y install vim

CONF_DIR=/vagrant/vagrant-provision/conf

cp -f ${CONF_DIR}/www.conf /etc/php5/fpm/pool.d/www.conf 
cp -f /vagrant/vagrant-provision/conf/php5-fpm.conf /etc/nginx/conf.d/php5-fpm.conf
cp -f /vagrant/vagrant-provision/conf/index.php /usr/share/nginx/html/index.php
cp -f /vagrant/vagrant-provision/conf/default /etc/nginx/sites-available/default
cp -f /vagrant/vagrant-provision/conf/php.ini /etc/php5/fpm/php.ini
cd /usr/share/nginx/ && ln -fs /vagrant/www/ www

service php5-fpm restart
service nginx restart

