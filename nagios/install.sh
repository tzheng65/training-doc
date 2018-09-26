### create nagios user and group ###
# create Nagios user
sudo useradd nagios

# create Nagios group
sudo groupadd nagcmd

# add user to the group
sudo usermod -a -G nagcmd nagios

### Install build dependencies ###
# update APT package list
sudo apt-get update

# install build dependencies
sudo apt-get install build-essential libgd2-xpm-dev openssl libssl-dev xinetd apache2-utils unzip

### extract Nagios Core from archive ###
cd ~
sudo tar xvf ~/Downloads/nagios-4.1.1.tar.gz
cd nagios-*
sudo ./configure --with-nagios-group=nagios --with-command-group=nagcmd

### Build and configure Nagios Core ###
# compile Nagios
sudo make all

# install Nagios, init scripts, and sample configuration
sudo make install
sudo make install-commandmode
sudo make install-init
sudo make install-config
sudo /usr/bin/install -c -m 644 sample-config/httpd.conf /etc/apache2/sites-available/nagios.conf

# Add the web server user, www-data, to the Nagios group
sudo usermod -G nagcmd www-data

### extract Nagios plugin from archive ###
cd ~
sudo tar xvf ~/Downloads/nagios-plugins-2.1.1.tar.gz
cd nagios-plugins-*
sudo ./configure --with-nagios-user=nagios --with-nagios-group=nagios --with-openssl

# build the plugin
sudo make
# install the plugin
sudo make install
