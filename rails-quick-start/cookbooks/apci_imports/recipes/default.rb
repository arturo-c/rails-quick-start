#
# Cookbook Name:: apci_imports
# Recipe:: default
#
# Copyright 2011, Allplayers.com
#
# All rights reserved - Do Not Redistribute

package "libxslt-dev" do
  action :install
end

package "libxml2-dev" do
  action :install
end

package "sqlite3" do
  action :install
end

package "libsqlite3-dev" do
  action :install
end

gem_package "xml-simple" do
  action :install
end

gem_package "addressable" do
  action :install
end

gem_package "highline" do
  action :install
end

gem_package "rest-client" do
  action :install
end

gem_package "activesupport" do
  action :install
end

gem_package "i18n" do
  action :install
end

gem_package "nokogiri" do
  action :install
end

gem_package "sqlite3" do
  action :install
end

gem_package "gdata" do
  action :install
end

