helpers do
  def loggedin?
    !!session[:id]
  end

  def auth_user(params)
    @user = User.find_by_user_name(params[:user_name])
    if @user && @user.password == params[:password]
        session[:id] = @user.id
    end
  end
end