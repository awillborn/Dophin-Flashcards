require 'spec_helper'

describe "Index" do

  before(:all) do
    FactoryGirl.create(:card)
    FactoryGirl.create(:deck)
    FactoryGirl.create(:user)
  end

  let(:attribs) {FactoryGirl.attributes_for(:user)}

  describe "redirect logic" do

    it "should redirect if the user is logged in" do
      session[:id] = 1
      get '/'
      p last_response
    end

    it "should keep the user on the login page if not logged in" do
      get'/'
      expect(last_response.status).to eq(200)
      expect(last_response.body).to include("sign up")
    end
  end
end
