get '/users/new' do
  erb :signup
end

post '/users' do
  User.create params
  redirect '/decks'
end


get '/users/login' do
  erb :login
end

post '/login' do
  if auth_user(params)
    @urls = Url.all
    redirect '/decks'
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
