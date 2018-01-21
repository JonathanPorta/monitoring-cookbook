#
# Cookbook Name::monitoring
# Recipe::autochef
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

packagecloud_repo 'jonathanporta/monitoring' do
  type 'rpm'
  metadata_expire '0'
end

package 'monitoring' do
  action [:upgrade]
end
