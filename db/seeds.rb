Image.create!([
  {url: "https://images.asos-media.com/products/public-desire-reform-chunky-sock-boots-in-black/21685616-4?$XXL$&wid=513&fit=constrain", product_id: 1},
  {url: "https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dwbe45df79/images/d_107/568498C_D_107X1.jpg?sw=2000", product_id: 2},
  {url: "https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dw9b8fab64/images/d_107/168893C_D_107X1.jpg?sw=2000", product_id: 3},
  {url: "https://i1.adis.ws/i/drmartens/25831220.80.jpg?$large$", product_id: 6},
  {url: "https://images-na.ssl-images-amazon.com/images/I/81uiWMk9dnL._AC_UX395_.jpg", product_id: 7},
  {url: "https://ean-images.booztcdn.com/converse/1300x1700/g/con568498c_cwhite.jpg", product_id: 2},
  {url: "https://images.asos-media.com/products/public-desire-reform-chunky-sock-boots-in-black/21685616-4?$XXL$&wid=513&fit=constrain", product_id: 1},
  {url: "https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dwbe45df79/images/d_107/568498C_D_107X1.jpg?sw=2000", product_id: 2},
  {url: "https://www.converse.com/dw/image/v2/BCZC_PRD/on/demandware.static/-/Sites-cnv-master-catalog/default/dw9b8fab64/images/d_107/168893C_D_107X1.jpg?sw=2000", product_id: 3},
  {url: "https://i1.adis.ws/i/drmartens/25831220.80.jpg?$large$", product_id: 6},
  {url: "https://images-na.ssl-images-amazon.com/images/I/81uiWMk9dnL._AC_UX395_.jpg", product_id: 7}
])
Category.create!([
  {name: "Shoes"},
  {name: "Sandals"},
  {name: "Sneakers"},
  {name: "Boots"}
])
Supplier.create!([
  {name: "Converse Supplier", email: "converse@gmail.com", phone_number: "222-2222"},
  {name: "Shoes 4 You", email: "shoes4you@gmail.com", phone_number: "111-1111"},
  {name: "Converse Supplier", email: "converse@gmail.com", phone_number: "222-2222"},
  {name: "Shoes 4 You", email: "shoes4you@gmail.com", phone_number: "111-1111"}
])
CartedProduct.create!([
  {user_id: 1, product_id: 1, quantity: 2, order_id: nil, status: "carted"},
  {user_id: 1, product_id: 1, quantity: 2, order_id: nil, status: "carted"},
  {user_id: 3, product_id: 1, quantity: nil, order_id: nil, status: "carted"},
  {user_id: 3, product_id: 1, quantity: nil, order_id: nil, status: "carted"},
  {user_id: 3, product_id: 1, quantity: nil, order_id: nil, status: "carted"},
  {user_id: 3, product_id: 1, quantity: nil, order_id: nil, status: "carted"},
  {user_id: 3, product_id: 1, quantity: nil, order_id: nil, status: "carted"},
  {user_id: 1, product_id: 2, quantity: 1, order_id: nil, status: "carted"},
  {user_id: 3, product_id: 1, quantity: nil, order_id: nil, status: "carted"}
])
Product.create!([
  {name: "Chuck Taylor All Star Lugged", price: "70.0", description: "A sneaker-boot hybrid.", inventory: 15, supplier_id: 1},
  {name: "Sandals ", price: "30.0", description: "Brown faux leather with straps on instep", inventory: 9, supplier_id: 2},
  {name: "Nike Air Force 1", price: "80.0", description: "All white ", inventory: 24, supplier_id: 2},
  {name: "Public Desire Reform: Chunky Sock Boot", price: "60.0", description: "front zipper with chunky sole. color: black", inventory: 12, supplier_id: 2},
  {name: "Chuck Taylor All Star Move", price: "75.0", description: "Angular platform. All white sole and body. White laces.", inventory: 2, supplier_id: 1},
  {name: "Hoka", price: "150.0", description: "cushy", inventory: nil, supplier_id: 1}
])
Order.create!([
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: "75.0", tax: "6.75", total: "81.75"},
  {user_id: 1, subtotal: "75.0", tax: "6.75", total: "81.75"},
  {user_id: 1, subtotal: "70.0", tax: "6.3", total: "76.3"},
  {user_id: 3, subtotal: "70.0", tax: "6.3", total: "76.3"},
  {user_id: 1, subtotal: "80.0", tax: "7.2", total: "87.2"}
])
ProductCategory.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 1},
  {product_id: 3, category_id: 1},
  {product_id: 6, category_id: 1},
  {product_id: 7, category_id: 1},
  {product_id: 6, category_id: 2},
  {product_id: 2, category_id: 3},
  {product_id: 1, category_id: 4},
  {product_id: 2, category_id: 4}
])
User.create!([
  {name: "bowser", email: "bowser@gmail.com", password_digest: "$2a$12$9VA8oLsLI6N7Q7FQgcxCIuzjHvcXRVTGPQP50PCpZjGnsVhNWK8Eu", admin: false},
  {name: "archie", email: "archie@gmail.com", password_digest: "$2a$12$gJFVjP0kUINVyvHeZ93snuItforBKyheye7EIW8NKbe2ebzlABHYG", admin: false},
  {name: "david", email: "david@gmail.com", password_digest: "$2a$12$AKifyYcWAH8BD3u9UjB0O.jhg.dydmhm6noWpkma87uz49YGYfNP6", admin: true},
  {name: "colin", email: "colin@gmail.com", password_digest: "$2a$12$T590XjrCvyoVyyY4wmkPkOZaj5TLnbMqjHYlrjV19lFVizFIM.vkG", admin: false},
  {name: "john", email: "john@gmail.com", password_digest: "$2a$12$jGUDzvb/oVLpTGOAdwSK.OSO7lIG/kao2PsuLkSUJ9VW4TfCKNxzC", admin: false}
])
