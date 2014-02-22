get '/' do
  if loggedin?
    redirect '/decks'
  else
    erb :index
  end
end
