### configure apache web server ###
# enable rewrite module
sudo a2enmod rewrite

# enable cgi module
sudo a2enmod cgi


# create an admin user
sudo htpasswd -c /usr/local/nagios/etc/htpasswd.users wasadmin

