echo 'update apt'
sudo apt update
echo 'install apache2, nodejs, npm, php'
sudo apt -y install apache2 nodejs npm php
echo 'install grunt'
sudo npm install -g grunt-cli
echo 'clone phaser'
sudo git clone https://github.com/photonstorm/phaser-examples.git
echo 'copy phaser to apache'
sudo cp -R ./phaser-examples/examples/ /var/www/html/
echo 'change owner to www'
sudo chown -R www-data:www-data /var/www/*
echo 'change default apache web directory'
sudo sed -i '/html/ s/$/\/examples/' /etc/apache2/sites-enabled/000-default.conf
echo 'restart apache'
sudo systemctl restart apache2