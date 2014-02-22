require 'spec_helper'


describe "UserController" do

  describe "addiing a card to the database" do
    it "should increase the post count" do
      expect {Card.create}.to change {Card.count}.by(1)
    end
  end
end