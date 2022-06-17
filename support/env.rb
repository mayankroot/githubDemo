require 'rubygems'
require 'cucumber'
require 'watir'
require 'selenium-webdriver'
require 'webdriver-user-agent'




Before do
  # driver = Webdriver::UserAgent.driver(:browser => :chrome, :agent => :desktop)
  $browser = Watir::Browser.new :chrome
end

After do
  $browser.close
end