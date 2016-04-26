# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Flare.destroy_all

u1 = User.create!(
  first_name: "Tracy",
  last_name: "Wu",
  username: "tracywu",
  description: "This is the first user",
  location: "Shoreditch",
  email: "tracy@gmail.com",
  password: "password",
  password_confirmation: "password"
)

u2 = User.create!(
  first_name: "John",
  last_name: "Smith",
  username: "jsmith",
  description: "This is the second user",
  location: "Knightsbridge",
  email: "john@gmail.com",
  password: "password",
  password_confirmation: "password"
)

f1 = Flare.create!(
  user_id: u1.id, 
  title: "Highaskite @ Shoreditch",
  category: "Music",
  location: "Shoreditch",
  description: "1 x highaskite ticket available, gig starting in 30 minutes",
  start_date: "230416",
  start_time: "1700"
)

f2 = Flare.create!(
  user_id: u1.id, 
  title: "SectionBoyz @ Brixton",
  category: "Gig",
  location: "Brixton",
  description: "1 x SectionBoyz ticket available, gig starting in 30 minutes",
  start_date: "010416",
  start_time: "2100"
)

f3 = Flare.create!(
  user_id: u2.id, 
  title: "Jazz @ Soho",
  category: "Music",
  location: "Ronnie Scotts",
  description: "1 x jazz ticket available, gig starting in 30 minutes",
  start_date: "010516",
  start_time: "1800"
)

f4 = Flare.create!(
  user_id: u2.id,
  title: "English Ballet",
  category: "Recital",
  location: "Royal Albert Hall",
  description: "1 x Beethoven ticket available, gig starting in 30 minutes",
  start_date: "010916",
  start_time: "2000"
)

u1.profile_pic = Rails.root.join("app/assets/images/flume.jpg").open
u1.save!

u2.profile_pic = Rails.root.join("app/assets/images/avicci.jpg").open
u2.save!

f1.photo = Rails.root.join("app/assets/images/highaskite.jpg").open
f1.save!

f2.photo = Rails.root.join("app/assets/images/section.jpg").open
f2.save!

f3.photo = Rails.root.join("app/assets/images/ronnie.jpg").open
f3.save!

f4.photo = Rails.root.join("app/assets/images/ballet.jpg").open
f4.save!
