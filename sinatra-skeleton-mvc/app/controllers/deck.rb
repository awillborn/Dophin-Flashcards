get '/decks' do
  @decks = Deck.all
  erb :decks
end

get '/decks/:id' do
  @cards = Card.all.find_by_deck_id(params[:id])
  erb :cards
end


