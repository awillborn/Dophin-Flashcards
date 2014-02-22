get '/users/new' do
  erb :create_user
end

post '/users' do
  User.create params
  redirect '/decks'
end


get '/users/login' do
  erb :login
end

get '/users/stats/' do
  p params
  @user = User.find(session[:id])
  @deck = Deck.find(params[:deck_id].to_i)
  erb :show_stats
end

post '/login' do
  p params
  if auth_user(params)
    # @urls = Url.all
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
