helpers do
  # This will return the current user, if they exist
  # Replace with code that works with your application
def loggedin?
  !!session["id"]
end

def auth_user(params)
  @user = User.find_by_username(params[:username])
  p @user && @user.password == params[:password]
  if @user && @user.password == params[:password]
      session[:id] = @user.id
      true
    else
    false
  end
end

end