class User < ApplicationRecord

  has_secure_password
  validates :email, presence: true, uniqueness: true
  has_many :user_games 
  has_many :games, through: :user_games

  def calculate_score
    games = Game.all

    correct = []
    guesses = []
    i = 0
    sum = 0
    # games.each do |game|
    #   game.winner << correct
    # end
    
    # self.user_games.each do |user_game|
    #   guesses << user_game.user_pick
    # end
    games = games.order(:game_number)
    p games
    the_user_games = self.user_games.order(:game_number)
    p the_user_games
    while i < games.length
      p games[i].winner
      p the_user_games[i].user_pick
    
      if games[i].winner == the_user_games[i].user_pick
        p "correct"
        sum += 4
      else
        p "wrong"
      end 
      p "//"
      i += 1
    end
    p sum
    self.update(point_total: sum)
  end



end
