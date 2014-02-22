get '/decks' do
  @decks = Deck.all
  erb :show_decks
end

get '/decks/:id' do
  p params
  session[:cards] = Deck.find(params[:id]).cards.shuffle
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
