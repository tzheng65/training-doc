# switch to ~/Downloads directory
cd ~/Downloads

# install CI pre-requisites
sudo dpkg -i java-common_0.51_all.deb 
sudo dpkg -i libnss3-1d_3.23-0ubuntu0.14.04.1_amd64.deb
sudo dpkg -i libsctp1_1.0.15+dfsg-1_amd64.deb
sudo dpkg -i tzdata-java_2016f-0ubuntu0.14.04_all.deb
sudo apt-get install default-jre
sudo apt-get -f install
sudo apt-get install openjdk-7-jdk


# install Tomcat
cd ~
sudo mkdir /opt/tomcat
sudo tar xvf ~/Downloads/apache-tomcat-8.0.36.tar.gz  -C /opt/tomcat --strip-components=1 




