require_relative '../../lib/helpers/environment_setup.rb'
require 'capybara/cucumber'
require 'rspec'
require 'site_prism'
require 'require_all'
require 'webdrivers'
require 'os'
require 'pry'

include EnvironmentSetup
include RSpec::Matchers

require_rel "../../lib/pages/*.rb"
require_rel "../../lib/*.rb"

driver_setup :chrome

capybara_default_setup

if OS.windows?
	require 'webdrivers'
	Webdrivers::Chromedriver.required_version = '78.0.3904.70'
end

Capybara.register_driver :chrome_headless do |app|
	browser_options = ::Selenium::WebDriver::Chrome::Options.new()
	browser_options.args << '--headless'
	# browser_options.args << '--diable-gpu'
	Capybara::Selenium::Driver.new(app,
		browser: :chrome,
		options: browser_options
	)
end
