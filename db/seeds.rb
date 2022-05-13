# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# user = User.create!([
#   {email: "Jdoe@gmail.com", username: "doejohn291", bracket_made: "false", password_digest: "password"},
#   {email: "Bryce@hotmail.com", username: "Bryce345", bracket_made: "false", password_digest: "password"},
#   {email: "LSh@gmail.com", username: "Guaman231", bracket_made: "false", password_digest: "password"},
#   {email: "tucker@yahoo.com", username: "soccerStar304", bracket_made: "false", password_digest: "password"},
#   {email: "shane@gmail.com", username: "soccerShane2022", bracket_made: "false", password_digest: "password"},
# ])


game = Game.create!([
  {home: "USA", away: "NED", winner: "USA", game_number: 49, points: 4, next_round: 57},

  {home: "SEN", away: "ENG", winner: "ENG", game_number: 50, points: 4, next_round: 58},

  {home: "ARG", away: "DEN", winner: "ARG", game_number: 51, points: 4, next_round: 57},

  {home: "FRA", away: "MEX", winner: "FRA", game_number: 52, points: 4, next_round: 58},

  {home: "GER", away: "CAN", winner: "GER", game_number: 53, points: 4, next_round: 59},

  {home: "BEL", away: "ESP", winner: "ESP", game_number: 54, points: 4, next_round: 60},

  {home: "BRA", away: "POR", winner: "BRA", game_number: 55, points: 4, next_round: 59},

  {home: "URU", away: "SUI", winner: "URU", game_number: 56, points: 4, next_round: 60},
])
