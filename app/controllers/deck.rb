get '/decks' do
  @decks = Deck.all
  erb :show_decks
end

get '/decks/:id' do
  deck = Deck.find(params[:id])
  User.find(session[:id]).rounds.create(deck_id: deck.id)
  session[:cards] = deck.cards.shuffle
  @card = session[:cards].pop
  erb :show_card, layout: false
end

post '/decks/:deck_id/cards/:card_id' do
  @current_card = Card.find(params[:card_id])
  @card = session[:cards].pop
  if @card.nil?
    session.delete(:cards)
    @answer_eval = (params[:answer].downcase == @current_card.answer.downcase)
    assign_score(@answer_eval)
    p "inside nil"
    redirect to("/users/stats/#{params[:deck_id]}")
  else
    @answer_eval = (params[:answer].downcase == @current_card.answer.downcase)
    assign_score(@answer_eval)
    erb :show_card, layout: false
  end
end

get '/decks/:deck_id/cards/:card_id' do
  @current_card = Card.find(params[:card_id])
  @card = session[:cards].pop
  if @card.nil?
    session.delete(:cards)
    redirect to("/users/stats/#{params[:deck_id]}")
  else
    erb :show_card, layout: false
  end
end
