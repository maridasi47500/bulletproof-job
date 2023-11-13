# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Country.destroy_all
Country.find_or_create_by(name: "France")
City.destroy_all
City.find_or_create_by(name: "Paris")
Job.destroy_all
Job.find_or_create_by(name: "musician")
Job.find_or_create_by(name: "cellule informatique")
Job.find_or_create_by(name: "soldier")
Job.find_or_create_by(name: "officier de la communication")
Job.find_or_create_by(name: "agent de la sécurité")
Job.find_or_create_by(name: "métier de la terre")
