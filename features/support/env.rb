require 'capybara'
require 'site_prism'
require 'capybara/cucumber'
require 'report_builder'
require 'httparty'
require_relative 'page_helper.rb'

Capybara.register_driver :site_prism do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
end

World(Pages)

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    Capybara.page.driver.browser.manage.window.maximize
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background
end