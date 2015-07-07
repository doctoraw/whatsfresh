ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"

# Add Capybara feature tests
require "minitest/rails/capybara"

# Awesome colorful output
require "minitest/pride"

class ActiveSupport::TestCase
end