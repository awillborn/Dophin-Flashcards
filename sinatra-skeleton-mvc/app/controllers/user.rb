get '/users/new' do
  erb :create_user
end

post '/users'
  User.create params
  redirect '/user/:id'
end

get '/user/:id' do
  @decks = Decks.all
  erb :show_user
end


get '/users/login' do
  erb :login
end

post '/login' do
  if auth_user(params)
    # @urls = Url.all
    redirect '/user/:id'
  else
    redirect to '/'
  end

end

post '/logout' do
  session.clear
  redirect '/'
end

get '/delete_account' do
  User.delete(session[:id])
end
