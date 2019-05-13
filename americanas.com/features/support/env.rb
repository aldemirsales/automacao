require 'capybara'
require 'capybara/cucumber'
require 'cpf_faker'
require 'faker'
require 'rspec'
require 'selenium-webdriver'

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = 'https://www.americanas.com.br/'
  config.default_max_wait_time = 5
end
