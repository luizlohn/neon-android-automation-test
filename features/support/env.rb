require 'calabash-android/cucumber'

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/data/#{ENV['ENVIRONMENT']}.yml")

