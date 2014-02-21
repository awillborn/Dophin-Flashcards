# Initial idea for card display, probably will change?


get '/user/:id/decks/:id' do
  @cards = Card.all.find_by_deck_id(params[:id])
  erb :cards
end


