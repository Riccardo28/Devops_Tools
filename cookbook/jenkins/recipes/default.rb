#
# Cookbook Name:: jenkins
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

#wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key | sudo apt-key add -

include_recipe 'apt::default'

apt_repository 'jenkins' do
  uri 'http://pkg.jenkins.io/debian'
  distribution 'binary/'
  key 'https://pkg.jenkins.io/debian/jenkins-ci.org.key'
end

# remote_file '/tmp/jenkins-ci.org.key' do
#   source 'https://pkg.jenkins.io/debian/jenkins-ci.org.key'
#   notifies :run, 'execute[apt-key add /tmp/jenkins-ci.org.key]', :immediately
# end
#
# #sudo apt-key add -
# execute 'apt-key add /tmp/jenkins-ci.org.key' do
#   action :nothing
# end
#
# #sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
# file '/etc/apt/sources.list.d/jenkins.list' do
#   content 'deb http://pkg.jenkins.io/debian-stable binary/'
#   notifies :run, 'execute[apt-get update]', :immediately
# end
#
# #sudo apt-get update
# execute 'apt-get update' do
#   action :nothing
# end

#package 'openjdk-7-jre-headless'
#sudo apt-get install jenkins

package 'jenkins'
