# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
a1 = Artist.create(name: "Beyonce", bio: "I came, I saw, I concured.")
a2 = Artist.create(name: "JZ", bio: "Im a copy cat of my wife..Shes more successful.")
a3 = Artist.create(name: "Laday Gaga", bio: "Born this way all day errday. Yup.")

g1 = Genre.create(name:"Hip Hop")
g2 = Genre.create(name:"POP")

s1 = Song.create(name: "Love on top", artist_id:a1.id, genre_id:g1.id)
s2 = Song.create(name: "99 problems", artist_id:a2.id,genre_id:g1.id)
s3 = Song.create(name: "Born this way",artist_id:a3.id,genre_id:g2.id)

