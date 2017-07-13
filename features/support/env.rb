require_relative '../../lib/helpers/environment_setup.rb'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'active_support'
include EnvironmentSetup

ActiveSupport::Dependencies.autoload_paths << File.expand_path(File.join(Dir.pwd, 'lib/pages'))

driver_setup :chrome

capybara_default_setup