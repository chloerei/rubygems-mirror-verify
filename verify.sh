#!/bin/bash

rm -rf vendor

bundle config --delete mirror.https://rubygems.org
bundle config --delete path

bundle install --path vendor/bundle/rubygems.org

bundle config --local mirror.https://rubygems.org https://ruby.taobao.org
bundle install --path vendor/bundle/ruby.taobao.org

echo 'Comparing...'

diff -r vendor/bundle/rubygems.org/ruby/2.2.0/cache/ vendor/bundle/ruby.taobao.org/ruby/2.2.0/cache/

echo 'Done.'
