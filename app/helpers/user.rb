helpers do
  def loggedin?
    !!session[:id]
  end

  def auth_user(params)
    user = User.find_by_username(params[:username])
    if user && user.password == params[:password]
        session[:id] = user.id
        user
    end
  end
end