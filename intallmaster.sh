#!/bin/sh
#cd /path/to/file
#chmod +x filename.sh
#./filename.sh
# update & upgrade #
sudo apt-get update
sudo apt-get upgrade
sudo su apt-get install apache2 gcc make libxml2-dev autoconf ca-certificates unzip nodejs curl libcurl4-openssl-dev pkg-config libssl-dev screen
apt-get autoremove php php-dev php-cli && apt-get autoremove php5 php5-dev php5-cli 
mkdir /home/install
cd /home/install
wget http://be2.php.net/get/php-5.6.32.tar.bz2/from/this/mirror -O php-5.6.32.tar.bz2
tar -xjvf php-5.6.32.tar.bz2
cd php-5.6.32
./configure --prefix /usr/local --with-mysql --enable-maintainer-zts --enable-sockets --with-openssl --with-pdo-mysql 
make
make install
cd /home/install
wget http://pecl.php.net/get/pthreads-2.0.10.tgz
tar -xvzf pthreads-2.0.10.tgz
cd pthreads-2.0.10
/usr/local/bin/phpize
./configure
make
make install
echo 'date.timezone = Europe/Paris' >> /usr/local/lib/php.ini
echo 'extension=pthreads.so' >> /usr/local/lib/php.ini
 apt-get install libapache2-mod-php5
 apt-get install mysql-server php5-mysql
 apt-get install phpmyadmin