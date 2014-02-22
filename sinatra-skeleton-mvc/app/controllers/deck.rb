get '/decks' do
  @decks = Deck.all
  erb :show_decks
end

get '/decks/:id' do
  @cards = Card.all
  # @cards = Card.all.find_by_deck_id(params[:id])
  #need to add a session to prevent infinite loop
  erb :show_card
end

# post '/decks/:id' do
#   #check if answer was right or wrong.
#   #pop session[:cards] until session is empty, then redirect to statitics page
#   erb :show_card
# end
