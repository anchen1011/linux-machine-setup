mkdir backups
sudo apt install x11-xkb-utils

cp ~/.zshrc backups/

cp ~/.bashrc backups/
echo '###############################' >>~/.bashrc
echo '###############################' >>~/.bashrc
echo '### Personal Configurations ###' >>~/.bashrc
echo '# swap capslock and esc' >>~/.bashrc
echo '/usr/bin/setxkbmap -option "caps:swapescape"' >>~/.bashrc
echo '# set python2 as default' >>~/.bashrc
echo 'alias python=/usr/local/bin/python2.7' >>~/.bashrc
echo '# setup isolate mode' >>~/.bashrc
echo 'alias isolate="sudo service ssh stop; sudo service apache2 stop; sudo ufw disable"' >>~/.bashrc
echo '# setup remote mode' >>~/.bashrc
echo 'alias remote="sudo ufw enable; sudo service apache2 start; sudo service ssh start"' >>~/.bashrc
echo '# enter zsh by default' >>~/.bashrc
echo 'zsh' >>~/.bashrc

sudo apt-get update
sudo apt-get upgrade

sudo apt-get install vim
sudo cp ~/.vimrc backups/
sudo cp .vimrc ~

sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev
sudo version=2.7.13
sudo wget https://www.python.org/ftp/python/$version/Python-$version.tgz
sudo tar -xvf Python-$version.tgz
sudo cd Python-$version
sudo CXX=g++ ./configure
sudo make
sudo checkinstall
cd ..

sudo apt-get install python-pip
sudo pip install -U pip setuptools
sudo pip install numpy
sudo pip install scipy
sudo pip install matplotlib

sudo apt-get install tmux
sudo cp ~/.tmux.conf backups/
sudo cp .tmux.conf ~

sudo apt-get install git

sudo apt-get install curl

sudo apt-get install zsh
sudo sh -c "$(curl -fsSL https://raw.github.com/anchen1011/oh-my-zsh/master/tools/install.sh)"
sudo chmod a+w ~/.zshrc
sudo echo '# customize prompt' >>~/.zshrc
sudo echo 'export PS1="%~%% "' >> ~/.zshrc
sudo echo '# setup isolate mode' >>~/.zshrc
sudo echo 'alias isolate="sudo service ssh stop; sudo service apache2 stop; sudo ufw disable"' >>~/.zshrc
sudo echo '# setup remote mode' >>~/.zshrc
sudo echo 'alias remote="sudo ufw enable; sudo service apache2 start; sudo service ssh start"' >>~/.zshrc
sudo chmod a-w ~/.zshrc

sudo apt-get install openssh-server
sudo apt-get install ufw
sudo ufw limit ssh/tcp
sudo ufw allow http
sudo ufw allow https
sudo ufw allow ftp
sudo ufw enable
sudo cp /etc/ssh/sshd_config backups/
sudo cp sshd_config /etc/ssh
sudo chmod a-w /etc/ssh/sshd_config
sudo cp /etc/ssh/sshd_banner backups/
sudo cp sshd_banner /etc/ssh/sshd_banner
sudo chmod a-w /etc/ssh/sshd_banner
sudo service ssh restart

sudo apt-get install apache2 apache2-doc apache2-utils
sudo service apache2 restart
sudo cp /var/www/html/index.html backups/
sudo cp index.html /var/www/html/
sudo chmod a-w /var/www/html/index.html
sudo mkdir ~/www
sudo ln -s ~/www /var/www/html/portal
sudo ln -s /etc/apache2/mods-available/cgi.load /etc/apache2/mods-enabled/cgi.load
sudo service apache2 reload

sudo apt-get install sublime-text

sudo apt-get install octave

sudo apt-get install libgnome2-bin


sudo ufw status
ip addr
zsh
