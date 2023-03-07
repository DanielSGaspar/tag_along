# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts("Cleaning database")
Location.destroy_all
Beach.destroy_all

puts("Creating locations")
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

puts("Creating beaches")
#Cascais Beaches
carcavelos = Beach.create(
  name: "Carcavelos",
  address: "Praia de Carcavelos, Cascais",
  location: cascais
)
sao_pedro = Beach.create(
  name: "São Pedro do Estoril",
  address: "Praia de São Pedro do Estoril, Cascais",
  location: cascais
)
guincho = Beach.create(
  name: "Guincho",
  address: "Praia do Guincho, Cascais",
  location: cascais
)

#Almada Beaches
sao_joao = Beach.create(
  name: "São João da Caparica",
  address: "Praia de São João da Caparica, Almada",
  location: almada
)
fonte_da_telha = Beach.create(
  name: "Fonte da Telha",
  address: "Praia da Fonte da Telha, Almada",
  location: almada
)

#Sintra Beaches
adraga = Beach.create(
  name: "Adraga",
  address: "Praia da Adraga, Sintra",
  location: sintra
)
praia_grande = Beach.create(
  name: "Praia Grande",
  address: "Praia Grande, Sintra",
  location: sintra
)
praia_das_maçãs = Beach.create(
  name: "Praia das Maçãs",
  address: "Praia das Maçãs, Sintra",
  location: sintra
)

#Mafra Beaches
sao_julião = Beach.create(
  name: "São Julião",
  address: "Praia de São Julião, Ericeira",
  location: mafra
)
foz_do_lizandro = Beach.create(
  name: "Foz do Lizandro",
  address: "Praia da Foz do Lizandro, Ericeira",
  location: mafra
)
ribeira_dilhas = Beach.create(
  name: "Ribeira D'Ilhas",
  address: "Praia da Ribeira D'Ilhas, Ericeira",
  location: mafra
)

puts("Created seeds")
