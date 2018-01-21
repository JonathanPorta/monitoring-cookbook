#
# Cookbook Name::monitoring
# Recipe::firewall
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

# Configure the firewall to allow access to services
firewall 'default' do
  log_level :high
  action :install
end

# SSH, obviously.
firewall_rule 'ssh' do
  port [22]
  command :allow
  notifies :save, 'firewall[default]', :delayed
end
