begin
  require 'rspec/expectations'
rescue LoadError;
  require 'spec/expectations'
end
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.default_wait_time = 10
Capybara.default_selector= :css
Capybara::Selenium::Driver::DEFAULT_OPTIONS[:resynchronize] = false
Capybara.ignore_hidden_elements = false
Capybara.app_host = 'http://localhost:8080'


World(Capybara)
