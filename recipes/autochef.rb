#
# Cookbook Name::prometheus
# Recipe::autochef
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

packagecloud_repo 'jonathanporta/prometheus' do
  type 'rpm'
  metadata_expire '0'
end

package 'prometheus' do
  action [:upgrade]
end
