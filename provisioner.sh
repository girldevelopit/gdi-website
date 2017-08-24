#!/bin/bash

apt-get -y update
apt-get -yfV dist-upgrade

# Install dependencies.
echo "Installing Git & other dependencies..."
apt-get install -yfV         \
  build-essential            \
  curl                       \
  git-core                   \
  libcurl4-openssl-dev       \
  libreadline-dev            \
  libssl-dev                 \
  libxml2-dev                \
  libxslt1-dev               \
  libyaml-dev                \
  python-software-properties \
  zlib1g-dev                 \
  libffi-dev                 \
  libpq-dev                  \
  imagemagick                \
  libmagickwand-dev          \
  nginx                      \

# get and compile Ruby
echo "Getting & compiling Ruby from source...This will take a LONG TIME. Fear not!"
curl -LSso /tmp/ruby-2.4.1.tar.gz ftp://ftp.ruby-lang.org/pub/ruby/2.4/ruby-2.4.1.tar.gz
tar -zxf /tmp/ruby-2.4.1.tar.gz -C /tmp

cd /tmp/ruby-2.4.1 && \
  ./configure --disable-install-doc && \
  make && \
  sudo make install

# install nodejs
echo "Installing NodeJS"
add-apt-repository -y ppa:chris-lea/node.js
apt-get -y update
apt-get install -y nodejs

# install postgres
echo "Installing PostgreSQL"
set -x
echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main 9.3" \
    | sudo tee -a /etc/apt/sources.list.d/pgdg.list
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get -y update
sudo apt-get -y install postgresql-9.3
sudo apt-get -y install postgresql-contrib-9.3

sudo sed -ibk \
    -re "s/[#]*listen_addresses = '.*'(.*)/listen_addresses = '*'\1/" \
    /etc/postgresql/9.3/main/postgresql.conf
echo "host    all   vagrant   10.0.2.2/32  trust" | sudo tee -a /etc/postgresql/9.3/main/pg_hba.conf
sudo su postgres -c "psql -c \"CREATE ROLE vagrant SUPERUSER LOGIN PASSWORD 'vagrant'\" "
sudo service postgresql restart

echo "gem: --no-ri --no-rdoc" > ~/.gemrc
echo 'installing Bundler'
gem install bundler

# Remove any leftovers
apt-get -y autoremove

sudo service nginx restart

cp /opt/gdi/development/motd.sh /etc/update-motd.d/99-gdi
chmod 755 /etc/update-motd.d/99-gdi