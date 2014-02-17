#!/bin/bash
#
# bootstrap.sh 
#
# This script provides a basic environment for executing
# Chef cookbooks via the chef-solo command


# Get deps via apt
sudo apt-get update
sudo apt-get install -y build-essential curl libssl-dev libxml2 libxml2-dev libyaml-dev libxslt1-dev libreadline-dev libpq-dev git-core libzlib-ruby sqlite libsqlite3-dev libcurl3 libcurl3-gnutls libcurl4-openssl-dev

# Install Ruby
sudo mkdir -p /usr/local/src && cd /usr/local/src
sudo wget http://ftp.ruby-lang.org/pub/ruby/1.9/ruby-1.9.3-p484.tar.gz
sudo tar -zxf ruby-1.9.3-p484.tar.gz
cd ruby-1.9.3-p484
sudo ./configure && sudo make && sudo make install

# Install RubyGems
cd /usr/local/src
sudo wget http://rubyforge.org/frs/download.php/76729/rubygems-1.8.25.tgz
sudo tar -xzf rubygems-1.8.25.tgz
cd rubygems-1.8.25 && sudo ruby setup.rb


# Install Chef gem
cd ~ # might as well go home at this point

sudo gem install chef --no-rdoc --no-ri --version "~> 11.4"
