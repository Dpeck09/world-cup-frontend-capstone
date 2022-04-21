# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.create!([
  {email: "Jdoe@gmail.com", username: "doejohn291", bracket_made: "false", password_digest: "password"},
  {email: "Bryce@hotmail.com", username: "Bryce345", bracket_made: "false", password_digest: "password"},
  {email: "LSh@gmail.com", username: "Guaman231", bracket_made: "false", password_digest: "password"},
  {email: "tucker@yahoo.com", username: "soccerStar304", bracket_made: "false", password_digest: "password"},
  {email: "shane@gmail.com", username: "soccerShane2022", bracket_made: "false", password_digest: "password"},
])