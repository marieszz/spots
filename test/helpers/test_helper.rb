ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase
    include Devise::TestHelpers
  # Add more helper methods to be used by all tests here...
  fixtures :all
end
