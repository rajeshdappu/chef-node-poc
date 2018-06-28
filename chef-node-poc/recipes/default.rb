#
# Cookbook:: chef-node-poc
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

file "#{ENV['HOME']}/test.txt" do
    content 'This file was created by Chef!'
end

execute 'install-mongo' do
    command 'sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 2930ADAE8CAF5059EE73BB4B58712A2291FA4AD5'
    command 'echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.6 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.6.list'
    command 'sudo apt-get update'
    command 'sudo apt-get install -y mongodb-org'
    
    ignore_failure true
end