get '/user' do

end


get '/login' do
  erb :login
end

post 'login' do
  #password authentication
  #set up sesssion
  redirect '/decks'
end

get 'signup' do
  erb :signup
end

post '/signup'
  User.create params
  redirect '/decks'
end

post 'logout' do
  session.clear
  redirect '/'
end



