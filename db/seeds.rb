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
  {image: "https://upload.wikimedia.org/wikipedia/commons/6/6e/Classical_Guitar_two_views2.png", product_id: "1"},
  {image: "http://www.mastersingersbythesea.org/wp-content/uploads/2015/10/pear-drums.jpg", product_id: "2"},
  {image: "http://www.trevorjonesltd.co.uk/images/AmatiFrenchHorn.jpg", product_id: "3"},
  {image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/French-horn.png", product_id: "3"},
  {image: "https://upload.wikimedia.org/wikipedia/commons/6/63/French_horn_front.png", product_id: "3"}
])
Order.create!([
  {user_id: 1, product_id: 1, quantity: 5, subtotal: 1000.0, tax: 90.0, total: 1090.0},
  {user_id: 1, product_id: 1, quantity: 2, subtotal: 400.0, tax: 36.0, total: 436.0}
])
Product.create!([
  {name: "Classical Guitar", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", stock: 65, price: "200.0", supplier_id: 1, user_id: nil},
  {name: "Dirty Drums", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", stock: 17, price: "25.0", supplier_id: 2, user_id: nil},
  {name: "French Horn", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", stock: 200, price: "350.0", supplier_id: 3, user_id: nil},
  {name: "Cello", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: "Strings", price: "525.0", supplier_id: 1, user_id: nil},
  {name: "Violin", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", stock: 24, price: "215.0", supplier_id: 1, user_id: nil},
  {name: "Trumpet", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", stock: 54, price: "152.0", supplier_id: 3, user_id: nil}
])
Supplier.create!([
  {name: "Gibson", email: "info@gibson.com", phone: "312-555-1212"},
  {name: "Zildjan", email: "info@zildjan.com", phone: "312-555-2121"},
  {name: "Brass_Monkey", email: "info@brass_monkey.com", phone: "312-555-4545"}
])
