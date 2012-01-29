maintainer       "RightScale, Inc."
maintainer_email "training@rightscale.com"
license          "All rights reserved"
description      "Installs/Configures notifies"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.1"

depends "rs_utils"

supports "ubuntu"

recipe "notifies::http_port_example", "Uses the port attribute to change the port that apache listens on."

attribute "notifies/apache/port",
  :display_name => "Apache Listen Port",
  :required => "recommended",
  :default => "80",
  :recipes => ["notifies::http_port_example"]