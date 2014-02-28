get '/users/new' do
  erb :create_user
end

post '/users' do
  @user = User.create params
  if @user.valid?
    session[:id] = @user.id
    redirect '/decks'
  else
    erb :create_user
  end
end


get '/users/login' do
  erb :login
end

get '/users/stats/:deck_id' do
  @user = User.find(session[:id])
  @deck = Deck.find(params[:deck_id].to_i)
  erb :show_stats
end

post '/login' do
  auth_user(params)
  p params
  if loggedin?
    redirect '/decks'
  else
    @failed_loggin = true
    erb :index
  end
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/delete_account' do
  User.delete(session[:id])
end
