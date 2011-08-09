env = defined?(RAILS_ENV) ? RAILS_ENV : Rails.env
if env == 'test'
  require 'birdbath'
  require 'test/unit'
  Test::Unit::TestCase.class_eval do
    include Birdbath
  end
end
