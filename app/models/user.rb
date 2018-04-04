class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable

  #Relationships to games
  has_many :games
  #has_many :active_games, class_name: "Game", foreign_key: "opponent_id", dependent: :destroy

end
