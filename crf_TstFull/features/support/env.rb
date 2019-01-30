
require "capybara"
require 'appium_lib'
require 'cucumber'
require 'appium_console'
require 'pry'
require 'rspec'
require 'selenium-cucumber'
require 'selenium-webdriver'
require 'capybara/cucumber'
require 'rake'
require 'rack/test'

def caps
{ caps: {
    deviceName: "e3fb68a1",
    platformName: "Android",
    appPackage: "br.com.seniorsolution.crefisa",
    appActivity: "br.com.seniorsolution.crefisa.MainActivity",
    newCommandTimeout: "6600",
    automationName: "UiAutomator2"

}}
end

$appium_driver = Appium::Driver.new(caps, true)

Appium.promote_appium_methods Object
