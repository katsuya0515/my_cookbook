#
# Cookbook Name:: my_cookbook
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


template "nginx.conf" do
        path "/etc/nginx/conf.d/myapp.conf"
        source "nginx.conf.erb"
        owner "root"
        group "root"
        mode 0644
        notifies :reload,'service[nginx]'
end