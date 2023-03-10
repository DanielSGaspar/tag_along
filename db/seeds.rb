# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"

puts("Cleaning database")
Booking.destroy_all
Ride.destroy_all
Location.destroy_all
Beach.destroy_all


puts("Creating locations")
cascais = Location.new(
  name: "Cascais",
  description: "Amazing location with sick waves!"
)
file = URI.open("https://images.unsplash.com/photo-1615672337780-6e19a28a5b39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80")
cascais.photo.attach(io: file, filename: "cascais.png", content_type: "image/png")
cascais.save

costa = Location.new(
  name: "Costa da Caparica",
  description: "Perfect waves with beautiful view."
)
file = URI.open("https://images.unsplash.com/photo-1642675468641-0de6e989334e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
costa.photo.attach(io: file, filename: "costa.png", content_type: "image/png")
costa.save

sintra = Location.new(
  name: "Sintra",
  description: "A rustic place in tune with the local surf."
)
file = URI.open("https://images.unsplash.com/photo-1565865735988-fd5752a02846?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
sintra.photo.attach(io: file, filename: "sintra.png", content_type: "image/png")
sintra.save

ericeira = Location.new(
  name: "Ericeira",
  description: "Beaches surrounded by high cliffs of rocky coast with a small harbor for fishermen."
)
file = URI.open("https://images.unsplash.com/photo-1640635725201-559e3e2f6c4d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
ericeira.photo.attach(io: file, filename: "ericeira.png", content_type: "image/png")
ericeira.save

puts("Creating beaches")
#Cascais Beaches
carcavelos = Beach.new(
  name: "Carcavelos",
  address: "Praia de Carcavelos, Cascais",
  location: cascais
)
file = URI.open("https://images.unsplash.com/photo-1575478844777-d8361533206b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
carcavelos.photo.attach(io: file, filename: "carcavelos.png", content_type: "image/png")
carcavelos.save

sao_pedro = Beach.new(
  name: "São Pedro do Estoril",
  address: "Praia de São Pedro do Estoril, Cascais",
  location: cascais
)
file = URI.open("https://images.unsplash.com/photo-1540457775988-f46bab98bbb6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")
sao_pedro.photo.attach(io: file, filename: "sao_pedro.png", content_type: "image/png")
sao_pedro.save

guincho = Beach.new(
  name: "Guincho",
  address: "Praia do Guincho, Cascais",
  location: cascais
)
file = URI.open("https://cdn.visitportugal.com/sites/default/files/styles/encontre_detalhe_poi_destaque/public/mediateca/LIS_Cascais-Guincho_660x371.jpg?itok=Pkmid1qC")
guincho.photo.attach(io: file, filename: "guincho.png", content_type: "image/png")
guincho.save

#Costa da Caparica Beaches
sao_joao = Beach.new(
  name: "São João da Caparica",
  address: "Praia de São João da Caparica, Costa da Caparica",
  location: costa
)
file = URI.open("https://images.unsplash.com/photo-1506797220058-533e019ac7fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
sao_joao.photo.attach(io: file, filename: "sao_joao.png", content_type: "image/png")
sao_joao.save

fonte_da_telha = Beach.new(
  name: "Fonte da Telha",
  address: "Praia da Fonte da Telha, Costa da Caparica",
  location: costa
)
file = URI.open("https://images.unsplash.com/photo-1509564128632-51ca52fc43f4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1935&q=80")
fonte_da_telha.photo.attach(io: file, filename: "fonte_da_telha.png", content_type: "image/png")
fonte_da_telha.save

#Sintra Beaches
adraga = Beach.new(
  name: "Adraga",
  address: "Praia da Adraga, Sintra",
  location: sintra
)
file = URI.open("https://images.unsplash.com/photo-1647607219465-7159c8749831?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
adraga.photo.attach(io: file, filename: "adraga.png", content_type: "image/png")
adraga.save

praia_grande = Beach.new(
  name: "Praia Grande",
  address: "Praia Grande, Sintra",
  location: sintra
)
file = URI.open("https://images.unsplash.com/photo-1591549590250-10ab146d80d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
praia_grande.photo.attach(io: file, filename: "praia_grande.png", content_type: "image/png")
praia_grande.save

praia_das_macas = Beach.new(
  name: "Praia das Maçãs",
  address: "Praia das Maçãs, Sintra",
  location: sintra
)
file = URI.open("https://images.unsplash.com/photo-1653998542949-d62c6435b91b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=410&q=80")
praia_das_macas.photo.attach(io: file, filename: "praia_das_macas.png", content_type: "image/png")
praia_das_macas.save

#Mafra Beaches
sao_juliao = Beach.new(
  name: "São Julião",
  address: "Praia de São Julião, Ericeira",
  location: ericeira
)
file = URI.open("https://images.unsplash.com/photo-1519907362090-ac2b395e476b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
sao_juliao.photo.attach(io: file, filename: "sao_juliao.png", content_type: "image/png")
sao_juliao.save

foz_do_lizandro = Beach.new(
  name: "Foz do Lizandro",
  address: "Praia da Foz do Lizandro, Ericeira",
  location: ericeira
)
file = URI.open("https://images.unsplash.com/photo-1599407158811-fb0f3a254f21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
foz_do_lizandro.photo.attach(io: file, filename: "foz_do_lizandro.png", content_type: "image/png")
foz_do_lizandro.save

ribeira_dilhas = Beach.new(
  name: "Ribeira D'Ilhas",
  address: "Praia da Ribeira D'Ilhas, Ericeira",
  location: ericeira
)
file = URI.open("https://cdn.travel-in-portugal.com/sites/default/files/styles/x_large/public/beaches/ribeira-dilhas-ericeira.jpg")
ribeira_dilhas.photo.attach(io: file, filename: "ribeira_dilhas.png", content_type: "image/png")
ribeira_dilhas.save

puts("Created seeds")
