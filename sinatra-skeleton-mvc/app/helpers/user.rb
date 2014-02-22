helpers do
  def loggedin?
    !!session["id"]
  end

  def auth_user(params)
    @user = User.find_by_username(params[:username])
    @user && @user.password == params[:password]
    if @user && @user.password == params[:password]
        session[:id] = @user.id
        true
    else
      false
    end
  end
end