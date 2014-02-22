helpers do
  def header_url
    loggedin? ? "/logout" : "/users/new"
  end

  def header_home
    loggedin? ? "/decks" : "/"
  end

  def header_text
    loggedin? ? "log out" : "sign up"
  end
end
