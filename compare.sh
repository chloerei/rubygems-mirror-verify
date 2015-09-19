#!/bin/bash

bundle config --delete mirror.https://rubygems.org
bundle config --delete path

bundle install --path vendor/bundle/rubygems.org
bundle clean

bundle config --local mirror.https://rubygems.org https://ruby.taobao.org
bundle install --path vendor/bundle/ruby.taobao.org
bundle clean

echo 'Comparing...'

diff vendor/bundle/rubygems.org/ruby/2.2.0/cache/ vendor/bundle/ruby.taobao.org/ruby/2.2.0/cache/

echo 'Done.'
