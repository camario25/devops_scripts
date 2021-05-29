# update apt
echo 'update apt'
sudo apt update

# install packages from apt
echo 'install apache2, nodejs, npm, php'
sudo apt -y install apache2 nodejs npm php

# install grunt from npm
echo 'install grunt'
sudo npm install -g grunt-cli

# clone the phaser-examples repo
echo 'clone phaser'
sudo git clone https://github.com/photonstorm/phaser-examples.git

# copy phaser examples to default apache web server directory
echo 'copy phaser to apache'
sudo cp -R ./phaser-examples/examples/ /var/www/html/

# change the owner of the www directory
echo 'change owner to www'
sudo chown -R www-data:www-data /var/www/*

# use sed to change apache2 config to point the default apache web directory to phaser examples.
echo 'change default apache web directory'
sudo sed -i '/html/ s/$/\/examples/' /etc/apache2/sites-enabled/000-default.conf

# restart apache so that phaser runs on default port(80) on browser.
echo 'restart apache'
sudo systemctl restart apache2