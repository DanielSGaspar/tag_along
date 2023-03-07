# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

cascais = Location.create(
  name: "Cascais",
  description: "Amazing location with sick waves!"
)
almada = Location.create(
  name: "Almada",
  description: "Perfect waves with beautiful view."
)
sintra = Location.create(
  name: "Sintra",
  description: "A rustic place in tune with the local surf."
)
mafra = Location.create(
  name: "Mafra",
  description: "Beaches surrounded by high cliffs of rocky coast with a small harbor for fishermen."
)
