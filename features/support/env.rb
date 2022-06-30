require 'rubygems'
require 'cucumber'
require 'watir'
require 'report_builder'

Before do
  $browser = Watir::Browser.new :chrome
end

After do
  ReportBuilder.configure do |config|
    #config.input_path = 'test_report/test_report.json'
    #config.report_path = 'test_report/test_report.html'
    config.report_types = [:html]
    config.include_images = true
  end
  ReportBuilder.build_report
  $browser.close
end


