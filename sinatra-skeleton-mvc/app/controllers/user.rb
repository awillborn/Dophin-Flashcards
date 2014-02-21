before do
  bad_login = false
end

get '/users/:id' do
  if loggedin?
    @decks = Decks.all
    erb :show_user
  else
    @bad_login = true
    redirect '/'  #partial message of please login?/create account?
  end
end

get '/users/new' do
  erb :create_user
end

post '/users'
  User.create params
  redirect '/user/:id'
end

get '/users/login' do
  erb :login
end


get '/users/:id/delete_account' do
  if loggedin?
  erb :confirm_delete
end

post '/users/:id/delete_account' do
  User.delete(session[:id])
  redirect '/'
end

post '/login' do
  if auth_user(params)
    redirect '/user/:id'
  else
    bad_login = true
    redirect to '/'
  end
end

post '/logout' do
  session.clear
  redirect '/'
end


