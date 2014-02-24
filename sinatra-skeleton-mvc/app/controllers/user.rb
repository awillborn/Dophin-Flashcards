get '/users/new' do
  erb :create_user
end

post '/users' do
  new_user = User.create params
  session[:id] = new_user.id
  redirect '/decks' #post message, congrats on signing up! etc
end


get '/users/login' do
  erb :login
end

get '/users/stats/' do
  @user = User.find(session[:id])
  @deck = Deck.find(params[:deck_id].to_i)
  erb :show_stats
end

post '/login' do
  if auth_user(params)
    redirect '/decks'
  else
    redirect to '/'
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/delete_account' do
  User.delete(session[:id])
end
