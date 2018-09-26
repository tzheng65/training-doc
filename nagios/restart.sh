# create symbolic link of nagios.conf to the sites-enabled directory
sudo ln -s /etc/apache2/sites-available/nagios.conf /etc/apache2/sites-enabled/

# restart nagios
sudo service nagios restart

# restart web server
sudo service apache2 restart