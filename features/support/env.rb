require_relative '../../lib/helpers/environment_setup.rb'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'require_all'
include EnvironmentSetup

require_rel "../../lib/pages/*.rb"
require_rel "../../lib/*.rb"

driver_setup :chrome

capybara_default_setup