#
# Cookbook:: nginx
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
package 'nginx' do
    action :install
end

service 'nginx' do
    action [ :enable, :start ]
end

cookbook_file "/usr/share/nginx/html/index.html" do
    source "index.html"
    mode "0644"
end

service 'nginx' do
    action [ :restart ]
end
