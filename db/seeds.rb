# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Supplier.create([
#   {
#     name: "Converse Supplier",
#     email:"converse@gmail.com",
#     phone_number: "222-2222"
#   },
#   {
#     name: "Shoes 4 You",
#     email: "shoes4you@gmail.com",
#     phone_number: "111-1111"
#   }
#   ])

Image.create([
  {url: "https://images.asos-media.com/products/public-desire-reform-chunky-sock-boots-in-black/21685616-4?$XXL$&wid=513&fit=constrain",
  product_id: 1
  },
  {
    url: "https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dwbe45df79/images/d_107/568498C_D_107X1.jpg?sw=2000",
    product_id: 2
  },
  {
    url: "https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dw9b8fab64/images/d_107/168893C_D_107X1.jpg?sw=2000",
    product_id: 3
  },
  {
    url: "https://i1.adis.ws/i/drmartens/25831220.80.jpg?$large$",
    product_id: 6
  },
  {
    url: "https://images-na.ssl-images-amazon.com/images/I/81uiWMk9dnL._AC_UX395_.jpg",
    product_id: 7
  }
])