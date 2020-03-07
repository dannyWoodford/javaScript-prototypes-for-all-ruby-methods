# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
User.create!(username: "Ham")


Visual.destroy_all
Visual.create!(kind: 1)

Track.destroy_all
    Track.create!(title: "Be Honest(feat. Burna Boy)", artist: "Jorja Smith, Burna Boy", user_id: 1, visual_id: 1)

