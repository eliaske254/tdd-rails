require 'simplecov'
SimpleCov.start

require 'phantomjs'

require "test_helper"
require 'capybara/poltergeist'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :poltergeist, options: { phantomjs: Phantomjs.path }
end
