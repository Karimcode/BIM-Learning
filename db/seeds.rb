# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

puts "destroying all lessons"
Lesson.destroy_all
puts "lessons destroyed"
puts "destroying all users"
User.destroy_all
puts "user destroyed"
# puts "destroying all reviews"
# Review.destroy_all
# puts "reviews all destroyed"

# puts "destroying all participations"
# Participation.destroy_all
# puts "participations destroyed"




nico = User.create!(email: "nico@gmail.com", password: "123456", first_name: "Nicolas", last_name: "Descreux", remote_photo_user_url: "https://kitt.lewagon.com/placeholder/users/Nickatic")
helo = User.create!(email: "helo@gmail.com", password: "123456", first_name: "Héloise", last_name: "Guillemot", remote_photo_user_url: "https://kitt.lewagon.com/placeholder/users/ladylo")


anna = User.create!(email: "anna@gmail.com", password: "123456", first_name: "Anna", last_name: "Hercot")


lesson_anna_inscription = Lesson.create!(teacher: anna ,name: "Le cercle trigonométrique - niveau débutant", topic: "Mathématiques",  min_num_of_participants: 4, max_num_of_participants: 6, price: 40,  summary: "Compréhension détaillée du cercle trigonométrique avec théorie sur les radians et l'angle orienté de deux vecteurs.", description: "Le but de ce cours est de revenir sur la définition du cercle trigonométrique, qui correspond à: sur un cercle, on appelle sens direct, sens positif ou sens trigonométrique le sens contraire des aiguilles d’une montre. Nous travaillerons sur la définition d'un radian ainsi que sur la correspondance entre les radians et les degrés. Les fonctions sinus et cosinus ont été introduites dans les formules trigonométriques qui nous permettent de calculer des longueurs ou des angles dans un triangle rectangle. Nous reverrons ces fonctions plus en détail à partir de cette notion de cercle trigonométrique.", duration: 60, starts_at: "17:00", date: "2021-04-16")
lesson_anna_inscription.save!


# 5.times do
#   Event.create(user_id: User.all.sample.id, start_date: Date.today + rand(10_000), duration: rand(60..242), title: Faker::Superhero.descriptor, price: rand(1..1000), location: Faker::Movies::HarryPotter.location, description: Faker::GreekPhilosophers.quote)
# end

# 2.times do
#   Attendance.create(user_id: User.all.sample.id, event_id: Event.all.sample.id, stripe_customer_id: Faker::Bank.iban)
# end
