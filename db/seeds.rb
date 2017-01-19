# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Bar.destroy_all
bars_attributes = [
  {
    name:         "Café Maison Du Peuple",
    address:      "Parvis de Saint-Gilles, Bruxelles",
    description:  "Bar, petite restauration, concerts, brunchs, ...",
    stars:        3
  },
  {
    name:         "Le Caberdouche",
    address:      "Place de la liberté, 8. Bruxelles",
    description:  "Une valeur sûre que ce grand bar situé sur une belle place au abords du centre de Bruxelles",
    stars:        5
  },
  {
    name:         "Belga",
    address:      "Place Flagey, Bruxelles",
    description:  "Bar populaire, ambiance parfaite pour expats",
    stars:        3
  }
]
bars_attributes.each { |params| Bar.create!(params) }
