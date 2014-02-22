require 'rubygems'
require 'factory_girl'
require 'database_cleaner'

# All our specs should require 'spec_helper' (this file)

# If RACK_ENV isn't set, set it to 'test'.  Sinatra defaults to development,
# so we have to override that unless we want to set RACK_ENV=test from the
# command line when we run rake spec.  That's tedious, so do it here.
ENV['RACK_ENV'] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'shoulda-matchers'
require 'rack/test'

RSpec.configure do |config|
  config.include Rack::Test::Methods
  config.include FactoryGirl::Syntax::Methods

  config.before(:suite) do
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.clean_with(:truncation)
  end
  config.before(:all) do
    DatabaseCleaner.start
  end
  config.after(:all) do
    DatabaseCleaner.clean
  end
end

def app
  Sinatra::Application
end

FactoryGirl.define do
  factory :user do
    username "Phil Murray"
    password "password"
  end

  factory :deck do
    name "Heisenberg"
    topic "Chemistry"
  end

  factory :card do
    question "What is the atomic symbol for Gold"
    answer "Au"
    deck_id 1
  end
end