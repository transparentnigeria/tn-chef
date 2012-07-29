echo "deb http://apt.opscode.com/ `lsb_release -cs`-0.10 main" | sudo tee /etc/apt/sources.list.d/opscode.list
sudo mkdir -p /etc/apt/trusted.gpg.d
gpg --keyserver keys.gnupg.net --recv-keys 83EF826A
gpg --export packages@opscode.com | sudo tee /etc/apt/trusted.gpg.d/opscode-keyring.gpg > /dev/null

sudo apt-get -y update
sudo apt-get -y upgrade

sudo -E bash -c 'DEBIAN_FRONTEND=noninteractive apt-get -y install opscode-keyring chef git'

sudo git clone git://github.com/transparentnigeria/tn-chef.git /var/chef-solo
cd /var/chef-solo
sudo git submodule init
sudo git submodule update

sudo -E bash -c 'echo -e file_cache_path\ \"/tmp/chef-solo\"\\ncookbook_path\ \"/var/chef-solo/cookbooks\"\\nrole_path\ \"/var/chef-solo/roles\" > /etc/chef/solo.rb'

sudo chef-solo -c /etc/chef/solo.rb -j https://raw.github.com/transparentnigeria/tn-chef/master/knife/tn-web.json
