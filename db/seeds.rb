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
User.destroy_all


puts("Creating Cascais")
cascais = Location.new(
  name: "Cascais",
  description: "Amazing location with sick waves!"
)
file = URI.open("https://images.unsplash.com/photo-1615672337780-6e19a28a5b39?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=869&q=80")
cascais.photo.attach(io: file, filename: "cascais.png", content_type: "image/png")
cascais.save

puts("Creating Costa")
costa = Location.new(
  name: "Costa da Caparica",
  description: "Perfect waves with beautiful view."
)
file = URI.open("https://images.unsplash.com/photo-1642675468641-0de6e989334e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
costa.photo.attach(io: file, filename: "costa.png", content_type: "image/png")
costa.save

puts("Creating Sintra")
sintra = Location.new(
  name: "Sintra",
  description: "A rustic place in tune with the local surf."
)
file = URI.open("https://images.unsplash.com/photo-1565865735988-fd5752a02846?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
sintra.photo.attach(io: file, filename: "sintra.png", content_type: "image/png")
sintra.save

puts("Creating Ericeira")
ericeira = Location.new(
  name: "Ericeira",
  description: "Beaches surrounded by high cliffs of rocky coast with a small harbor for fishermen."
)
file = URI.open("https://images.unsplash.com/photo-1640635725201-559e3e2f6c4d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80")
ericeira.photo.attach(io: file, filename: "ericeira.png", content_type: "image/png")
ericeira.save

puts("Creating beaches")
puts("Creating Carcavelos")
#Cascais Beaches
carcavelos = Beach.new(
  name: "Carcavelos",
  address: "Praia de Carcavelos, Cascais",
  location: cascais
)
file = URI.open("https://images.unsplash.com/photo-1575478844777-d8361533206b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
carcavelos.photo.attach(io: file, filename: "carcavelos.png", content_type: "image/png")
carcavelos.save

puts("Creating Sao Pedro")
sao_pedro = Beach.new(
  name: "São Pedro do Estoril",
  address: "Praia de São Pedro do Estoril, Cascais",
  location: cascais
)
file = URI.open("https://images.unsplash.com/photo-1540457775988-f46bab98bbb6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=464&q=80")
sao_pedro.photo.attach(io: file, filename: "sao_pedro.png", content_type: "image/png")
sao_pedro.save

puts("Creating Guincho")
guincho = Beach.new(
  name: "Guincho",
  address: "Praia do Guincho, Cascais",
  location: cascais
)
file = URI.open("https://cdn.visitportugal.com/sites/default/files/styles/encontre_detalhe_poi_destaque/public/mediateca/LIS_Cascais-Guincho_660x371.jpg?itok=Pkmid1qC")
guincho.photo.attach(io: file, filename: "guincho.png", content_type: "image/png")
guincho.save

#Costa da Caparica Beaches
puts("Creating Sao Joao")
sao_joao = Beach.new(
  name: "São João da Caparica",
  address: "Praia de São João da Caparica, Costa da Caparica",
  location: costa
)
file = URI.open("https://images.unsplash.com/photo-1506797220058-533e019ac7fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
sao_joao.photo.attach(io: file, filename: "sao_joao.png", content_type: "image/png")
sao_joao.save

puts("Creating Fonte da Telha")
fonte_da_telha = Beach.new(
  name: "Fonte da Telha",
  address: "Praia da Fonte da Telha, Costa da Caparica",
  location: costa
)
file = URI.open("https://images.unsplash.com/photo-1509564128632-51ca52fc43f4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1935&q=80")
fonte_da_telha.photo.attach(io: file, filename: "fonte_da_telha.png", content_type: "image/png")
fonte_da_telha.save

#Sintra Beaches
puts("Creating Adraga")
adraga = Beach.new(
  name: "Adraga",
  address: "Praia da Adraga, Sintra",
  location: sintra
)
file = URI.open("https://images.unsplash.com/photo-1647607219465-7159c8749831?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
adraga.photo.attach(io: file, filename: "adraga.png", content_type: "image/png")
adraga.save

puts("Creating Praia Grande")
praia_grande = Beach.new(
  name: "Praia Grande",
  address: "Praia Grande, Sintra",
  location: sintra
)
file = URI.open("https://images.unsplash.com/photo-1591549590250-10ab146d80d7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
praia_grande.photo.attach(io: file, filename: "praia_grande.png", content_type: "image/png")
praia_grande.save

puts("Creating Praia das Maçãs")
praia_das_macas = Beach.new(
  name: "Praia das Maçãs",
  address: "Praia das Maçãs, Sintra",
  location: sintra
)
file = URI.open("https://images.unsplash.com/photo-1653998542949-d62c6435b91b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=410&q=80")
praia_das_macas.photo.attach(io: file, filename: "praia_das_macas.png", content_type: "image/png")
praia_das_macas.save

#Mafra Beaches
puts("Creating Sao Juliao")
sao_juliao = Beach.new(
  name: "São Julião",
  address: "Praia de São Julião",
  location: ericeira
)
file = URI.open("https://images.unsplash.com/photo-1519907362090-ac2b395e476b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
sao_juliao.photo.attach(io: file, filename: "sao_juliao.png", content_type: "image/png")
sao_juliao.save

puts("Creating Foz do Lizandro")
foz_do_lizandro = Beach.new(
  name: "Foz do Lizandro",
  address: "Praia da Foz do Lizandro",
  location: ericeira
)
file = URI.open("https://images.unsplash.com/photo-1599407158811-fb0f3a254f21?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80")
foz_do_lizandro.photo.attach(io: file, filename: "foz_do_lizandro.png", content_type: "image/png")
foz_do_lizandro.save

puts("Creating Ribeira")
ribeira_dilhas = Beach.new(
  name: "Ribeira D'Ilhas",
  address: "Praia da Ribeira D'Ilhas, Ericeira",
  latitude: 38.9888836,
  longitude: -9.418182,
  location: ericeira
)
file = URI.open("https://cdn.travel-in-portugal.com/sites/default/files/styles/x_large/public/beaches/ribeira-dilhas-ericeira.jpg")
ribeira_dilhas.photo.attach(io: file, filename: "ribeira_dilhas.png", content_type: "image/png")
ribeira_dilhas.save


#Users
password = "111111"

puts("Creating user 1")
user_1 = User.new(
  password: password,
  email: "kelly@gmail.com",
  first_name: "Kelly",
  last_name: "Slater",
  address: "R. Dom Pedro V 129, 1250-096 Lisboa",
  car: "BMW X6",
  bio: "I'm an American professional surfer, best known for being crowned World Surf League champion a record 11 times. I'm widely regarded as the greatest professional surfer of all time, and hold 56 Championship Tour victories."
)
file = URI.open("https://d3qf8nvav5av0u.cloudfront.net/image/536c48fbf12a1702fd3cda434c915dfb.png?&x=96&y=96&icq=74&sig=5b14c630d1eeef1c82563ed19f32d12e")
user_1.photo.attach(io: file, filename: "user_1.png", content_type: "image/png")
user_1.save

puts("Creating user 2")
user_2 = User.new(
  password: password,
  email: "gabriel@gmail.com",
  first_name: "Gabriel",
  last_name: "Medina",
  address: "R. do Alecrim 47A, 1200-014 Lisboa",
  car: "Renault Clio",
  bio: "I'm a Brazilian professional surfer who won the 2014, 2018 and 2021 WSL World Championships. With 17 WSL Championship Tour (CT) event wins and 29 Final appearances under my belt, I'm one of the most experienced surfers when it comes to producing the best surfing under pressure."
)
file = URI.open("https://d3qf8nvav5av0u.cloudfront.net/image/8a17743f5828d7d0834cb66e71cfe145.png?&x=96&y=96&icq=74&sig=54e7617fff2a0ce6786a0798db769d74")
user_2.photo.attach(io: file, filename: "user_2.png", content_type: "image/png")
user_2.save

puts("Creating user 3")
user_3 = User.new(
  password: password,
  email: "beth@gmail.com",
  first_name: "Bethany",
  last_name: "Hamilton",
  address: "Escadinhas da Fonte da Pipa 2, 2710-557 Sintra",
  car: "Audi A5",
  bio: "I'm an American professional surfer and writer who survived a 2003 shark attack in which my left arm was bitten off and then ultimately returned to professional surfing."
)
file = URI.open("https://d3qf8nvav5av0u.cloudfront.net/image/46a464854286e9bba3cfa665a73a41f8.png?&x=96&y=96&icq=74&sig=bee937104bcdc99eb8aeb106cbf6f05b")
user_3.photo.attach(io: file, filename: "user_3.png", content_type: "image/png")
user_3.save

puts("Creating user 4")
user_4 = User.new(
  password: password,
  email: "kelia@gmail.com",
  first_name: "Kelia",
  last_name: "Moniz",
  address: "Av. Alm. Reis 1 H, 1150-007 Lisboa",
  car: "Ford Focus",
  bio: "I'm one of the most versatile surfers in the world, whether I'm long-boarding or short-boarding. Although I'm only in my mid-20s, I've been a prominent face on the world tour for over a decade, winning two ASP world titles and serving as a central figure in female Longboarding's ever-growing mainstream appreciation."
)
file = URI.open("https://d3qf8nvav5av0u.cloudfront.net/image/73a427859cbb85f84c6bddc48c4ab1f5.png?&x=96&y=96&icq=74&sig=e15b64b65114e17775a33dcf9e04870d")
user_4.photo.attach(io: file, filename: "user_4.png", content_type: "image/png")
user_4.save

puts("Creating user 5")
user_5 = User.new(
  password: password,
  email: "mason@gmail.com",
  first_name: "Mason",
  last_name: "Ho",
  address: "R. de Santo António 34, 2655-312 Ericeira",
  car: "Volvo V70",
  bio: "I'm a professional surfer from Sunset Beach on Oahu's North Shore. A member of the Ho surfing dynasty, I'm is the son of professional surfer Michael Ho, brother of Coco Ho, and nephew to World Champion surfer Derek Ho."
)
file = URI.open("https://d3qf8nvav5av0u.cloudfront.net/image/3acda4136d26a62dcb63704d235123bd.png?&x=96&y=96&icq=74&sig=c150c8d8a132514939a9c3a9131a3f84")
user_5.photo.attach(io: file, filename: "user_5.png", content_type: "image/png")
user_5.save

#Rides

user = [user_1, user_2, user_3, user_4, user_5]
date_time = [DateTime.parse("12/03/2023 10:00"),DateTime.parse("12/03/2023 15:00"), DateTime.parse("15/03/2023 08:00"), DateTime.parse("11/03/2023 12:00"),DateTime.parse("13/03/2023 17:00")]
price = [20, 10, 15]
seats = 5
address = ["Cascais", "Carcavelos, Cascais", "Campo Grande, Lisboa", "Arroios, Lisboa", "Cais do Sodré, Lisboa"]

30.times do
  puts "Creating ride"
  ride = Ride.create(
    user: user.sample,
    date_time: date_time.sample,
    price: price.sample,
    seats: seats,
    beach: Beach.all.sample,
    address: address.sample
  )
end

puts("Created seeds")
