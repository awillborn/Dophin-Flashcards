get '/decks' do
  @decks = Deck.all
  erb :show_decks
end

get '/decks/:id' do
  session[:cards] = Card.find_all_by_deck_id(params[:id]).shuffle
  @card = session[:cards].pop
  erb :show_card
end

post '/decks/:deck_id/cards/:id' do
  #check if answer was right or wrong.
  @card = session[:cards].pop
  if @card.nil?
    #redirect to record
  else
    erb :show_card
  end
end
