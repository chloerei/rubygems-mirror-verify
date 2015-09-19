#!/bin/bash

# Locale
update-locale LC_ALL="en_US.utf8"

# Ruby
apt-add-repository -y ppa:brightbox/ruby-ng
apt-get update
apt-get upgrade
apt-get install -y ruby2.2 ruby2.2-dev

# Rails dependency
apt-get install -y nodejs sqlite3 libsqlite3-dev build-essential zlib1g-dev

gem install bundler
