#
# Cookbook Name::monitoring
# Recipe::default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'monitoring::_system'

# TODO: Figure out why the firewall cookbook doesn't seem to work.
# include_recipe 'monitoring::_firewall'
