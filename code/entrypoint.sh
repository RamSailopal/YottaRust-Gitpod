#!/bin/bash
apt-get update
apt-get install -y apache2 gcc git make ruby ruby-dev 
cd /usr/local
git clone https://github.com/chrisemunt/mg_ruby.git
cd mg_ruby
cd src
ruby extconf.rb
make
make install
cp /usr/local/mg_ruby/src/mg_ruby.so /usr/lib/x86_64-linux-gnu/ruby/2.7.0
/opt/yottadb/current/ydb <<< 'H'
cp /home/rubycode/*.m /data/r1.34_x86_64/r
/opt/yottadb/current/ydb <<< 'H'
/opt/yottadb/current/ydb <<< 'ZL "_zmgsis1.m"'
/opt/yottadb/current/ydb <<< 'ZL "_zmgsi1.m"'
/opt/yottadb/current/ydb <<< "do ylink^%zmgsi1"
/opt/yottadb/current/ydb <<< "do start^%zmgsi1(0)"
cd /home/rubycode
tail -f /dev/null
