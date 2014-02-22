get '/decks' do
  @decks = Deck.all
  erb :show_decks
end

get '/decks/:id' do
  session[:cards] = Card.find_all_by_deck_id(params[:id]).shuffle
  @card = session[:cards].pop
  erb :show_card
end

post '/decks/:deck_id/cards/:card_id' do
  @card = session[:cards].pop
  if @card.nil?
    session.delete(:cards)
    redirect to("/users/stats/?deck_id=#{params[:deck_id]}")
  else
    @answer_eval = (params[:answer] == @card.answer)
    erb :show_card
  end
end
