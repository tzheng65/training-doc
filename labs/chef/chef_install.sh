#### install Chef Server ####
# switch to ~/Downloads directory
cd ~/Downloads

# install Chef server core package
sudo dpkg -i ~/Downloads/chef-server-core_12.8.0-1_amd64.deb

# start Chef services
sudo chef-server-ctl reconfigure

# create admin user
sudo chef-server-ctl user-create wasadmin firstname lastname wasadmin@abcinc.com wasadmin --filename ~/wasadmin.pem

# create organization
sudo chef-server-ctl org-create abcinc 'ABC Inc.' --association_user wasadmin --filename ~/abcinc-validator.pem

### Install Chef Manage ###
# switch to ~/Downloads directory
cd ~/Downloads

# install Chef Manage package
sudo dpkg -i ~/Downloads/chef-manage_2.4.0-1_amd64.deb

# install Chef Manage on Chef server

# Restart Chef services
sudo chef-manage-ctl reconfigure --accept-license

### Install Chef Development Kit ###
# switch to ~/Downloads directory
cd ~/Downloads

# install Chef Development Kit package
sudo dpkg -i ~/Downloads/chefdk_0.15.16-1_amd64.deb

# Restart Chef services
sudo chef-manage-ctl reconfigure --accept-license