module EnvironmentSetup

  def driver_setup browser
    Capybara.register_driver browser do |app|
      Capybara::Selenium::Driver.new(app,:browser => browser)
    end
  end

  def capybara_default_setup 
    Capybara.configure do |config|
      config.run_server = false #To ensure a Rack server does not start
      config.ignore_hidden_elements = false #to ensure that all hidden elements on a page are recorded/available
      config.default_max_wait_time= 10 #wait time for asynchronus processes to finsh
      config.default_driver = :chrome #Default browser - input :selenium_chrome to use chrome browser as stated in the driver registration below
      config.match = :prefer_exact #this setting is to ensure Capybara has specific matching rather than fuzzy logic
    end
  end
end
