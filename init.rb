if RAILS_ENV == 'test'
  require 'birdbath'
  require 'test/unit'
  Test::Unit::TestCase.class_eval do
    include Birdbath
  end
end
