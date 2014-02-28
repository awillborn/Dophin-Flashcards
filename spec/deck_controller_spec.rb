require 'spec_helper'

describe "Deck controller" do

  let(:first_deck){FactoryGirl.create(:deck)}
  let(:first_user){FactoryGirl.create(:user)}
  before(:all) do
    FactoryGirl.create(:card)
    first_user.decks << first_deck
  end

  describe "answering a question correctly" do
    before(:each) do
      cards = Deck.find(1).cards
      post '/decks/1/cards/1', {answer: "Au"}, 'rack.session' => {cards: cards}
    end

    it "should be ok" do
      expect(last_response.status).to eq(200)
    end

    it "should return correct" do
      expect(last_response.body).to include("Correct")
      expect(last_response.body).not_to include("Incorrect")
    end
  end

  describe "answering a question incorrectly" do
    before(:each) do
      cards = Deck.find(1).cards
      post '/decks/1/cards/1', {answer: "Ag"}, 'rack.session' => {cards: cards}
    end

    it "should be ok" do
      expect(last_response.status).to eq(200)
    end

    it "should return incorrect" do
      expect(last_response.body).to include("Incorrect")
      expect(last_response.body).not_to include("Correct")
    end
  end
end