require 'capybara/cucumber'
require 'selenium-webdriver'
require 'pry'
require 'site_prism'
require_relative 'page_helper.rb'



#TRANSFORMANDO A CLASSE DENTRO DO ARQUIVO PAGE_HELPER EM GLOBAL
World(PageObjects)


# Configurar web-driver do Capybara
Capybara.configure do |config|
  config.default_driver = :selenium_chrome
  config.app_host = 'https://automacaocombatista.herokuapp.com'
  config.default_max_wait_time = 30
end
