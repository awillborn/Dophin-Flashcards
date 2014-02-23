get '/decks' do
  @decks = Deck.all
  erb :show_decks
end

get '/decks/:id' do
  p params
  session[:cards] = Card.find_all_by_deck_id(params[:id]).shuffle
  @card = session[:cards].pop
  erb :show_card
end

post '/decks/:deck_id/cards/:card_id' do
  p params
  @current_card = Card.find(params[:card_id])
  @card = session[:cards].pop
  if @card.nil?
    session.delete(:cards)
    redirect to("/users/stats/?deck_id=#{params[:deck_id]}")
  else
    @answer_eval = (params[:answer] == @current_card.answer)
    erb :show_card
  end
end

get '/decks/:deck_id/cards/:card_id' do
  @current_card = Card.find(params[:card_id])
  @card = session[:cards].pop
  if @card.nil?
    session.delete(:cards)
    redirect to("/users/stats/?deck_id=#{params[:deck_id]}")
  else
    erb :show_card
  end
end
