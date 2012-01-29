#
# Cookbook Name:: notifies
# Recipe:: default
#
# Copyright 2012, RightScale, Inc.
#
# All rights reserved - Do Not Redistribute
#

rs_utils_marker :begin

log "  Install apache if not installed."
package "apache2" do
  action :install
end

log "  Update config files if port changes."

template "/etc/apache2/ports.conf" do
  source "ports.conf.erb"
  mode 0644
end

template "/etc/apache2/sites-available/default" do
  source "site-default.erb"
  mode 0644
end

log "  Start apache if not started."
service "apache2" do
  action :start
end

rs_utils_marker :end