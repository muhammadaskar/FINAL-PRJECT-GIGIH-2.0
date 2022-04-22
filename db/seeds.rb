# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Category.destroy_all
Item.destroy_all

Category.create([
    {name: "Makanan"},
    {name: "Minuman"},
    {name: "Penutup"}
])

Item.create([
    {name: "Coto Makassar", desc: 'ini adalah coto', price: 25.000},
    {name: "Pallubasa", desc: 'ini adalah pallubasa', price: 23.000},
    {name: "Es Teler", desc: 'ini adalah es teler', price: 10.000},
    {name: "Es Kelapa Muda", desc: 'ini adalah es kelapa muda', price: 8.000}
])