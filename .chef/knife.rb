# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "linoespinoza"
client_key               "#{current_dir}/linoespinoza.pem"
validation_client_name   "devcats-validator"
validation_key           "#{current_dir}/devcats-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/devcats"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]

# Verify all HTTPS connections (recommended)
ssl_verify_mode			:verify_peer
