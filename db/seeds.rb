# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Supplier.create([
  {
    name: "Converse Supplier",
    email:"converse@gmail.com",
    phone_number: "222-2222"
  },
  {
    name: "Shoes 4 You",
    email: "shoes4you@gmail.com",
    phone_number: "111-1111"
  }
  ])