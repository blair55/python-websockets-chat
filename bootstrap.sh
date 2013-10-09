sudo apt-get update
sudo apt-get install python-dev -y
sudo apt-get install python-pip -y
sudo apt-get install libevent-dev -y
sudo apt-get install ruby1.9.1-full -y
sudo apt-get install build-essential -y
sudo apt-get install tcl8.5 -y
sudo wget http://download.redis.io/releases/redis-2.6.16.tar.gz
#http://redis.googlecode.com/files/redis-2.4.16.tar.gz
sudo tar xzf redis-2.6.16.tar.gz
cd redis-2.6.16
sudo make
#sudo make test
sudo make install
#cd utils
#sudo ./install_server.sh
#cd ../../
#redis-server
sudo gem install bundler --no-rdoc --no-ri
sudo gem install foreman
cd /vagrant
sudo pip install -r requirements.txt
redis-server
foreman start