#!/bin/bash

MIRROR_URL=https://ruby.taobao.org

rm -rf vendor

bundle config --delete mirror.https://rubygems.org
bundle config --delete path

bundle install --path vendor/bundle/source

bundle config --local mirror.https://rubygems.org $MIRROR_URL
bundle install --path vendor/bundle/mirror

echo 'Comparing...'

diff -r vendor/bundle/source/ruby/2.2.0/cache/ vendor/bundle/mirror/ruby/2.2.0/cache/

echo 'Done.'
