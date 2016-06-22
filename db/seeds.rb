User.create!([
  {email: "jviegelahn@gmail.com", encrypted_password: "$2a$11$mkMAUSu.tZsRPu8nDDm3sO6DY8dYDNAvRwCQyrUqfLZRXbTLwPxXm", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2016-05-27 02:28:35", last_sign_in_at: "2016-05-27 02:28:35", current_sign_in_ip: "::1", last_sign_in_ip: "::1", admin: true}
])
CartedProduct.create!([
  {user_id: nil, product_id: 1, quantity: nil, status: nil},
  {user_id: nil, product_id: 1, quantity: nil, status: nil},
  {user_id: nil, product_id: 1, quantity: nil, status: nil},
  {user_id: nil, product_id: 1, quantity: nil, status: nil},
  {user_id: nil, product_id: 1, quantity: 5, status: nil},
  {user_id: nil, product_id: 1, quantity: 6, status: nil},
  {user_id: 1, product_id: 4, quantity: 3, status: nil},
  {user_id: 1, product_id: 1, quantity: 6, status: "purchased"},
  {user_id: 1, product_id: 1, quantity: 6, status: "purchased"},
  {user_id: 1, product_id: 1, quantity: 4, status: "purchased"},
  {user_id: 1, product_id: 5, quantity: 5, status: "purchased"},
  {user_id: 1, product_id: 3, quantity: 5, status: "carted"},
  {user_id: 1, product_id: 2, quantity: 1, status: "carted"}
])
CategorizedProduct.create!([
  {product_id: 1, category_id: 1},
  {product_id: 2, category_id: 2},
  {product_id: 3, category_id: 3},
  {product_id: 4, category_id: 1},
  {product_id: 5, category_id: 1},
  {product_id: 6, category_id: 3}
])
Category.create!([
  {name: "Strings"},
  {name: "Percussion"},
  {name: "Brass"}
])
Image.create!([
  {url: "https://upload.wikimedia.org/wikipedia/commons/6/6e/Classical_Guitar_two_views2.png", product_id: "1"},
  {url: "http://metrosoundmusic.com/wp-content/uploads/2013/09/AC65_large11.png", product_id: "1"},
  {url: "http://www.sigurdsonguitars.com/images/page-classical.png", product_id: "1"},
  {url: "http://images.fineartamerica.com/images-medium/dirty-drums-sam-hymas.jpg", product_id: "2"},
  {url: "http://www.instructables.com/files/deriv/F05/PTF9/FOWZOL73/F05PTF9FOWZOL73.MEDIUM.jpg", product_id: "2"},
  {url: "https://upload.wikimedia.org/wikipedia/commons/c/cf/French-horn.png", product_id: "3"},
  {url: "https://upload.wikimedia.org/wikipedia/commons/6/63/French_horn_front.png", product_id: "3"},
  {url: "http://clipartist.net/openclipart.org/2013/August/cello_298-999px.png", product_id: "4"},
  {url: "http://vignette2.wikia.nocookie.net/bloodplusanime/images/4/4a/Cello.png/revision/latest?cb=20120707123422", product_id: "4"},
  {url: "http://www.vincenzodisilvestro.it/wp-content/uploads/2012/07/violin.png", product_id: "5"},
  {url: "http://i584.photobucket.com/albums/ss281/Dariclacar/Music-Instrument/trumpet-2-1.png", product_id: "6"},
  {url: "https://www.wpclipart.com/music/instruments/trumpet/trumpet_01.png", product_id: "6"},
  {url: "http://vignette1.wikia.nocookie.net/warehouse13/images/6/6c/Napolean_Bonaparte's_Violin.png/revision/latest?cb=20131021203610", product_id: "5"},
  {url: "http://www.trevorjonesltd.co.uk/images/AmatiFrenchHorn.jpg", product_id: "3"}
])
Order.create!([
  {user_id: 1, subtotal: 1000.0, tax: 90.0, total: 1090.0},
  {user_id: 1, subtotal: 400.0, tax: 36.0, total: 436.0},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil},
  {user_id: 1, subtotal: nil, tax: nil, total: nil}
])
Product.create!([
  {name: "Classical Guitar", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: nil, stock: 65, price: "200.0", supplier_id: 1, user_id: nil},
  {name: "Dirty Drums", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: nil, stock: 17, price: "25.0", supplier_id: 2, user_id: nil},
  {name: "French Horn", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: nil, stock: 200, price: "350.0", supplier_id: 3, user_id: nil},
  {name: "Cello", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: "Strings", stock: nil, price: "525.0", supplier_id: 1, user_id: nil},
  {name: "Violin", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: nil, stock: 24, price: "215.0", supplier_id: 1, user_id: nil},
  {name: "Trumpet", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: nil, stock: 54, price: "152.0", supplier_id: 3, user_id: nil}
])
Supplier.create!([
  {name: "Gibson", email: "info@gibson.com", phone: "312-555-1212"},
  {name: "Zildjan", email: "info@zildjan.com", phone: "312-555-2121"},
  {name: "Brass_Monkey", email: "info@brass_monkey.com", phone: "312-555-4545"}
])
