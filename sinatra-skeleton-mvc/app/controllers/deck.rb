# Initial idea for card display, probably will change?


get '/user/:id/decks/:id' do
  cards = Card.all.find_by_deck_id(params[:id])
  sessions[cards] = cards.shuffle!
  @card = sessions[cards].pop
  erb :cards
end


