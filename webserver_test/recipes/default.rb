#
# Cookbook:: webserver_test
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'httpd'

# Start and enable the httpd service.
service 'httpd' do
  action [:enable, :start]
end

# Serve a custom home page.
file '/var/www/html/index.html' do
  content '<html>
  <body>
    <h1>hello world</h1>
  </body>
</html>'
end
