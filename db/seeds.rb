User.create!([
  {email: "justinviegelahn@gmail.com", encrypted_password: "$2a$11$0jSIBqqLpBnu2C2oRrxoOewe5HaIFBL0.w393xUd93nIBa5ME/FkO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 7, current_sign_in_at: "2016-05-22 19:08:51", last_sign_in_at: "2016-05-22 18:55:20", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
Image.create!([
  {image: "http://elekslabs.com/wp-content/uploads/2014/06/midi-piano-keyboard-middle-c-smaller.jpg", product_id: nil},
  {image: "https://upload.wikimedia.org/wikipedia/commons/6/6e/Classical_Guitar_two_views2.png", product_id: "1"},
  {image: "http://www.mastersingersbythesea.org/wp-content/uploads/2015/10/pear-drums.jpg", product_id: "2"},
  {image: "http://www.trevorjonesltd.co.uk/images/AmatiFrenchHorn.jpg", product_id: "3"},
  {image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/French-horn.png", product_id: "3"},
  {image: "https://upload.wikimedia.org/wikipedia/commons/6/63/French_horn_front.png", product_id: "3"}
])
Product.create!([
  {name: "Classical Guitar", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: "Strings", stock: 65, price: "200.0", supplier_id: 1, user_id: nil},
  {name: "Dirty Drums", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: "Percussion", stock: 17, price: "25.0", supplier_id: 2, user_id: nil},
  {name: "French Horn", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: "Brass", stock: 200, price: "350.0", supplier_id: 3, user_id: nil},
  {name: "Cello", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: "Strings", stock: 12, price: "525.0", supplier_id: 1, user_id: nil},
  {name: "Violin", description: "\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"", style: "Strings", stock: 24, price: "215.0", supplier_id: 1, user_id: nil}
])
Supplier.create!([
  {name: "Gibson", email: "info@gibson.com", phone: "312-555-1212"},
  {name: "Zildjan", email: "info@zildjan.com", phone: "312-555-2121"},
  {name: "Brass_Monkey", email: "info@brass_monkey.com", phone: "312-555-4545"}
])
