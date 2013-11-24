require_relative '../lib/random-location.rb'

RSpec.configure do |config|
  config.expect_with :rspec do |c|
    # disable the 'should' syntax
    c.syntax = :expect
  end
end
