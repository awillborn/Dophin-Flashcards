helpers do
  # This will return the current user, if they exist
  # Replace with code that works with your application
def loggedin?
  !!session["id"]
end

def auth_user(params)
  @user = User.find_by_username(params[:user_name])
  if @user && @user.password == params[:password]
      session["id"] = @user.id
  end
end

end