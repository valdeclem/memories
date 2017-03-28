# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create!({:email => "admin@gmail.com", :password => "111111", :password_confirmation => "111111" })
User.create!({:email => "user1@gmail.com", :password => "111111", :password_confirmation => "111111" })
User.create!({:email => "user2@gmail.com", :password => "111111", :password_confirmation => "111111" })

(1..5).each do |i|
  Memory.create!(histoire: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In feugiat purus dapibus fermentum sagittis. Fusce in tempus felis. Phasellus a erat ut lorem lacinia bibendum. Vivamus viverra facilisis neque, in scelerisque urna pharetra vel. Donec a est mauris. Integer eget metus quis eros egestas elementum. Integer bibendum risus hendrerit dapibus tempor. Fusce placerat in orci vitae tincidunt.",
  category: "text", user_id: 1)
end
