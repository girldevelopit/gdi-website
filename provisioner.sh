# the following line specifies what shell to use to execute the script; it is not a comment!
#!/usr/bin/env bash

echo "Your development environment is being configured!"
echo "Installing ruby and postgresql..."

#append '>>/tmp/provision-script.log 2>&1' to log output to file

apt-get update -y >>/tmp/provision-script.log 2>&1

# install ruby
apt-get install ruby2.1.7 -y >>/tmp/provision-script.log 2>&1

# install postgres
apt-get install postgresql-9.3 postgresql-contrib -y >>/tmp/provision-script.log 2>&1

# install other project dependencies
apt-get install build-essential libpq-dev  imagemagick libmagickwand-dev nodejs

# install bundler
gem install bundler