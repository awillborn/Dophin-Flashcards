# Initial idea for card display, probably will change?


get 'decks/:id' do
  cards = Card.all.find_by_deck_id(params[:id])
  sessions[:cards] = cards.shuffle!
  @card = sessions[:cards].pop
  erb :show_card
end


