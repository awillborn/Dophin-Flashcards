class User < ActiveRecord::Base
  has_many :decks, through: :rounds
  has_many :rounds

  validates_presence_of :username, message: "Username cannot be left blank"
  validates_uniqueness_of :username, message: "That username is already taken"
  validates_presence_of :password, message: "Password cannot be left blank"
end
