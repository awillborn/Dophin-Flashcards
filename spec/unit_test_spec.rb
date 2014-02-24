require 'spec_helper'

describe User do
  before(:all) do
    FactoryGirl.create(:user)
  end

  it { should have_many(:rounds)}
  it { should have_many(:decks).through(:rounds)}
  it { should validate_presence_of(:username).with_message("Username cannot be left blank")}
  it { should validate_uniqueness_of(:username).with_message("That username is already taken")}
  it { should validate_presence_of(:password).with_message("Password cannot be left blank")}
end

describe Deck do
  it { should have_many(:rounds)}
  it { should have_many(:cards)}
  it { should have_many(:users).through(:rounds)}
end

describe Card do
  it { should belong_to(:deck)}
end
