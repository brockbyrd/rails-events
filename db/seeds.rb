# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "brockbyrd", email: "brock@brock.com", password: "brockbyrd")
User.create(username: "alexkinsey", email: "alex@alex.com", password: "alexkinsey")
User.create(username: "cjdavis", email: "cj@cj.com", password: "cjdavis")
User.create(username: "leahschlackman", email: "leah@leah.com", password: "leahschlackman")
User.create(username: "dashylary", email: "dasha@dasha.com", password: "dashalary")

Arena.create(name: "Madison Square Garden", city: "Manhatten, New York City", state: "New York", capacity: "20000")
Arena.create(name: "Wrigley Field", city: "Chicago", state: "Illinois", capacity: "41000")
Arena.create(name: "Fenway Park", city: "Boston", state: "Massachusetts", capacity: "37500")
Arena.create(name: "Barclays Center", city: "Brooklyn", state: "New York", capacity: "19000")
Arena.create(name: "Yankee Stadium", city: "Bronx, New York City", state: "New York", capacity: "52000")
Arena.create(name: "Bridgestone Arena", city: "Nashville", state: "Tennessee", capacity: "20000")
Arena.create(name: "KFC Yum! Center", city: "Louisville", state: "Kentucky", capacity: "17500")
Arena.create(name: "Staples Center", city: "Los Angeles", state: "California", capacity: "20000")
Arena.create(name: "Philips Arena", city: "Atlanta", state: "Georgia", capacity: "17700")
Arena.create(name: "Metlife Stadium", city: "East Rutherford", state: "New Jersey", capacity: "82500")

Event.create(performer: "The Weeknd", event_type: "Concert", price: "50", time: DateTime.new(2021,1,15,7), arena_id: "1", user_id: "1")
Event.create(performer: "The Cubs", event_type: "Sports", price: "25", time: DateTime.new(2021,7,30,12,30), arena_id: "2", user_id: "2")
Event.create(performer: "Guns N' Roses", event_type: "Concert", price: "75", time: DateTime.new(2021,8,3,6), arena_id: "3", user_id: "3")
Event.create(performer: "Dave Chapelle", event_type: "Comedy", price: "45", time: DateTime.new(2021,9,7,8), arena_id: "4", user_id: "4")
Event.create(performer: "Drake", event_type: "Concert", price: "100", time: DateTime.new(2021,7,8,9), arena_id: "5", user_id: "5")
Event.create(performer: "Bill Burr", event_type: "Comedy", price: "35", time: DateTime.new(2021,11,3,4), arena_id: "6", user_id: "1")
Event.create(performer: "Louisville Basketball", event_type: "Sports", price: "15", time: DateTime.new(2020,12,14,11), arena_id: "7", user_id: "2")
Event.create(performer: "Clippers and Lakers", event_type: "Sports", price: "30", time: DateTime.new(2020,12,25,7), arena_id: "8", user_id: "3")
Event.create(performer: "Future", event_type: "Concert", price: "60", time: DateTime.new(2021,4,19,9), arena_id: "9", user_id: "4")
Event.create(performer: "New York Jets", event_type: "Sports", price: "15", time: DateTime.new(2020,12,6,12), arena_id: "10", user_id: "5")