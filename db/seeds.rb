require 'faker'
 # Create Users
 10.times do
   user = User.create!(
      email:  Faker::Internet.safe_email,
      password: Faker::Internet.password(8),
      role: "member"
   )
 end
  users = User.all
  # Create Wikis
 10.times do
   wiki = Wiki.create!(
     title:  Faker::String.random,
     body:   Faker::Hipster.paragraphs,
     private: Faker::Boolean.boolean,
     user: users.sample
   )
  end
 puts "Seed finished"
puts "#{User.count} users created"
puts "#{Wiki.count} wikis created"