# encoding: UTF-8

require 'rubygems'
require 'yaml'
require 'aws-sdk'

config_file = File.join(File.dirname(__FILE__), "aws_config.yml")
unless File.exist?(config_file)
  puts <<END
To run the samples, put your credentials in config.yml as follows:

access_key_id: YOUR_ACCESS_KEY_ID
secret_access_key: YOUR_SECRET_ACCESS_KEY

END
  exit 1
end

config = YAML.load(File.read(config_file))

unless config.kind_of?(Hash)
  puts <<END
config.yml is formatted incorrectly.  Please use the following format:

access_key_id: YOUR_ACCESS_KEY_ID
secret_access_key: YOUR_SECRET_ACCESS_KEY

END
  exit 1
end

AWS.config(config)

