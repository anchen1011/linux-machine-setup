mkdir backups
cp ~/.zshrc backups/

cp ~/.bashrc backups/
echo '###############################' >>~/.bashrc
echo '###############################' >>~/.bashrc
echo '### Personal Configurations ###' >>~/.bashrc
echo '# swap capslock and esc' >>~/.bashrc
echo '/usr/bin/setxkbmap -option "caps:swapescape"' >>~/.bashrc
echo '# set python2 as default' >>~/.bashrc
echo 'alias python=/usr/local/bin/python2.7' >>~/.bashrc
echo '# enter zsh by default' >>~/.bashrc
echo 'zsh' >>~/.bashrc

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install vim
cp ~/.vimrc backups/
cp .vimrc ~

sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
version=2.7.13
wget https://www.python.org/ftp/python/$version/Python-$version.tgz
tar -xvf Python-$version.tgz
cd Python-$version
CXX=g++ ./configure
make
sudo checkinstall
cd ..

sudo pip install -U pip setuptools
pip install numpy
pip install scipy
pip install matplotlib

sudo apt-get install tmux
cp ~/.tmux.conf backups/
cp .tmux.conf ~

sudo apt-get install zsh
cp .zshrc ~

sudo apt-get install openssh-server
sudo apt-get install ufw
sudo ufw limit ssh
sudo cp /etc/ssh/sshd_config backups/
sudo cp sshd_config /etc/ssh
chmod a-w /etc/ssh/sshd_config
sudo service ssh restart

sudo apt-get install apache2 apache2-doc apache2-utils
sudo service apache2 restart
cp /var/www/html/index.html backups/
cp index.html /var/www/html/
mkdir ~/www
ln -s ~/www /var/www/html/portal

sudo apt-get install sublime-text

sudo apt-get install octave

sudo apt-get install git

sudo apt-get install libgnome2-bin

ip addr

zsh
