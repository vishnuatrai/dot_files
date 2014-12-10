# packages
sudo apt-get update
sudo apt-get install vim
sudo apt-get install git
sudo apt-get install chromium-browser
sudo apt-get install mysql-server-5.6 mysql-client-5.6
sudo apt-get install postgresql-9.3 pgadmin3
sudo apt-get install libpq-dev
sudo apt-get install libmysqlclient-dev
sudo apt-get install sqlite3 libsqlite3-dev

sudo apt-get install redis-server
sudo apt-get install curl
sudo apt-get install openjdk-7-jre
sudo apt-get install openjdk-7-jdk

# mongodb latest stable install
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install -y mongodb-org

# configure dot files
cd 
mkdir src
cd src
git clone git@github.com:vatrai/dot_files.git

wget http://www.skype.com/go/getskype-linux-beta-ubuntu-64
sudo dpkg -i getskype-*
sudo apt-get -f install

ln -s ~/src/dot_files/zsh_profile.d ~/.zsh_profile.d
ln -s ~/src/dot_files/zshrc ~/.zshrc
ln -s ~/src/dot_files/irbrc ~/.irbrc
ln -s ~/src/dot_files/gitconfig ~/.gitconfig
ln -s ~/src/dot_files/gitignore ~/.gitignore
ln -s ~/src/dot_files/gitk ~/.gitk
mkdir ~/bin 
ln -s ~/src/dot_files/sake ~/bin/sake
ln -s ~/src/dot_files/vim ~/.vim
ln -s ~/src/dot_files/vimrc ~/.vimrc
ln -s ~/src/dot_files/aliasrc ~/.aliasrc
ln -s ~/src/dot_files/gemrc ~/.gemrc
ln -s ~/src/dot_files/bowerrc ~/.bowerrc
ln -s ~/src/dot_files/grunt-init ~/.grunt-init
source ~/.zshrc

cd ~/src/dot_files
git submodule init
git submodule update
vim +PluginInstall +qall
source ~/.zshrc

# rvm install
\curl -sSL https://get.rvm.io | bash
source ~/.zshrc

rvm install ruby-2.0.0-p598
rvm install ruby-2.1.5
rvm use ruby-2.1.5 --default
gem install colored grit

# nvm install
curl https://raw.githubusercontent.com/creationix/nvm/v0.19.0/install.sh | bash
source ~/.zshrc

nvm install 0.10.28
nvm install 0.10
nvm install 0.11
nvm alias default 0.10.28

echo "...completed..."
