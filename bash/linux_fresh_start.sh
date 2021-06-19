# update apt
echo 'update apt'
sudo apt update

# install packages from apt
echo 'install apache2, nodejs, npm, php, nmap, mysql-server, mongodb, postgresql, mtr, terraform, docker.io python3'
sudo apt -y install apache2 nodejs npm php nmap mysql-server mongodb postgresql mtr terraform docker.io python3
