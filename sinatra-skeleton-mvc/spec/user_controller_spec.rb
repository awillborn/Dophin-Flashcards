require 'spec_helper'

describe "User controller" do
  before(:all) do
    FactoryGirl.create(:card)
    FactoryGirl.create(:deck)
  end
  let(:attribs){FactoryGirl.attributes_for(:user)}

  describe "creating a User" do
    it "should increase the user count" do
      expect{post '/users', attribs}.to change{User.count}.by(1)
    end

    it "should not increase the user count if using a taken username" do
    expect{post '/users', attribs}.not_to change{User.count}
    end
  end

  #wanted to test that it redirected to the proper page
  #which would contain dophin if not logged in and home if logged
  #in. however, redirect does not put anything in the last_response.body
  #sections
  # describe "logging in" do
  #   it "should direct to decks with valid loggin" do

  #   end
  # end
end
