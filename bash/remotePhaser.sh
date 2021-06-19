sudo -s
echo 'update apt'
apt update
echo 'install apache2, nodejs, npm, php'
apt -y install apache2 nodejs npm php
echo 'install grunt'
npm install -g grunt-cli
echo 'clone phaser'
git clone https://github.com/photonstorm/phaser-examples.git
echo 'copy phaser to apache'
cp -R ~/phaser-project-template/deploy/ /var/www/html/
echo 'change owner to www'
chown -R www-data:www-data /var/www/*
echo 'change default apache web directory'
sed 's/index.html/deploy/g' /etc/apache2/sites-enabled/000-default.conf
echo 'restart apache'
systemctl restart apache2