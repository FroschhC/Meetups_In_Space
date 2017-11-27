# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Example:
#
#   Person.create(first_name: 'Eric', last_name: 'Kelly')


User.destroy_all
Meetup.destroy_all
Member.destroy_all

chris_2 = User.create(provider: "Github", uid: "1001", username: "dabomb1", email: "launch@gmail.com", avatar_url: "yes")
john_1 = User.create(provider: "Github", uid: "1002", username: "ducklover3", email: "launchduck@gmail.com", avatar_url: "yes")
fred_1 = User.create(provider: "Github", uid: "1003", username: "freddy879", email: "fred87638@gmail.com", avatar_url: "yes")
jake_1 = User.create(provider: "Github", uid: "1004", username: "footballfan95", email: "eagles95@gmail.com", avatar_url: "yes")

kite_lovers = Meetup.create(name: "Kite Lovers", description: "We love flying kites on the moon!", location: "Moon rock 4", creator: "Jake" )
duck_tales = Meetup.create(name: "Ducktales", description: "All about earth and the ducks they have", location: "Saturn", creator: "Chris" )

Member.create(meetup: duck_tales, user: chris_2)
Member.create(meetup: duck_tales, user: john_1)
Member.create(meetup: kite_lovers, user: chris_2)
Member.create(meetup: kite_lovers, user: jake_1)
Member.create(meetup: kite_lovers, user: fred_1)
