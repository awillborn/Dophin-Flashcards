require 'spec_helper'

describe User do
  before(:all) do
    FactoryGirl.create(:card)
    FactoryGirl.create(:deck)
    FactoryGirl.create(:user)
  end

  it { should validate_presence_of(:username).with_message("Username cannot be left blank")}
  it { should validate_presence_of(:password).with_message("Password cannot be left blank")}
end

