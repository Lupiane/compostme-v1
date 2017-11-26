# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


p "Creating seeds"

Compost.create(
  address: "square Villebois Mareuil, 92400 Courbevoie",
  owner: "public",
  verified: true,
  user_id: 1)

Compost.create(
  address: "10-12 avenue Chateau du Loir, 92400 Courbevoie",
  owner: "public",
  user_id: 1)

Compost.create(
  address: "310 rue du Révérend Père Cloarec, 92400 Courbevoie",
  owner: "public",
  user_id: 1)

Compost.create(
  address: "2 avenue du Parc, 92400 Courbevoie",
  owner: "public",
  user_id: 1)

p "Seeds created"
