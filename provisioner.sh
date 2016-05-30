# the following line specifies what shell to use to execute the script; it is not a comment!
#!/usr/bin/env bash

echo "Your development environment is being configured!"
echo "Installing ruby and postgresql..."

#append '>>/tmp/provision-script.log 2>&1' to log output to file

apt-get update -y >>/tmp/provision-script.log 2>&1

# install ruby
apt-get install ruby2.1.7 -y >>/tmp/provision-script.log 2>&1

# install postgres
apt-get install postgresql postgresql-contrib -y >>/tmp/provision-script.log 2>&1

# install bundler
gem install bundler