require 'spec_helper'

describe "Unit Tests" do
  before(:all)
    FactoryGirl.create(:note)
    FactoryGirl.create(:deck)
    FactoryGirl.create(:user)
  end

  validate_presence_of(:username).with_message("Username cannot be left blank")
  validate_presence_of(:password).with_message("Password cannot be left blank")
end

