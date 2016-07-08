require 'rspec'
require 'rspec/expectations'
require 'selenium-webdriver'
require 'capybara/cucumber'

Capybara.default_driver = :selenium
Capybara.app_host = "http://peaceful-temple-81275.herokuapp.com/"
Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome
end