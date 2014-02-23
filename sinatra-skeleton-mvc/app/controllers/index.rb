get '/' do
  if loggedin?
    redirect '/decks'
  else
    @rounds = Round.order("number_correct DESC").take(5)
    erb :index
  end
end
