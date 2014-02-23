get '/decks' do
  @decks = Deck.all
  @rounds = Round.where(user_id: session[:id])
  erb :show_decks
end

get '/decks/:id' do
  deck = Deck.find(params[:id])
  #ISO FEEDBACK: is it better to one line the following logic, or to define
  #user and call user.rounds.create(..)
  User.find(session[:id]).rounds.create(deck_id: deck.id)
  session[:cards] = deck.cards.shuffle
  @card = session[:cards].pop
  erb :show_card
end

post '/decks/:deck_id/cards/:card_id' do
  @current_card = Card.find(params[:card_id])
  @card = session[:cards].pop
  if @card.nil?
    session.delete(:cards)
    @answer_eval = (params[:answer].downcase == @current_card.answer.downcase)
    assign_score(@answer_eval)
    redirect to("/users/stats/?deck_id=#{params[:deck_id]}")
  else
    @answer_eval = (params[:answer].downcase == @current_card.answer.downcase)
    assign_score(@answer_eval)
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
