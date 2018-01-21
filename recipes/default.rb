#
# Cookbook Name::prometheus
# Recipe::default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

include_recipe 'prometheus::_system'

# TODO: Figure out why the firewall cookbook doesn't seem to work.
# include_recipe 'prometheus::_firewall'
