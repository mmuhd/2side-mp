# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.destroy_all


Listing.create(name: "Test", price: 299.99, body: "Bunch of info about this project", alive: false, category: "website", tag: "saas", created_at: '07-04-2001')
Listing.create(name: "Test2", price: 399.99, body: "Bunch of info about this project", alive: true, category: "app", tag: "saas", created_at: '06-04-2001')
Listing.create(name: "Test3", price: 899.99, body: "Bunch of info about this project", alive: true, category: "website", tag: "saas", created_at: '05-04-2001')
Listing.create(name: "Test4", price: 99.99, body: "Bunch of info about this project", alive: true, category: "domain", tag: "saas", created_at: '04-04-2001')
Listing.create(name: "Test5", price: 199.99, body: "Bunch of info about this project", alive: false, category: "website", tag: "saas", created_at: '07-04-2001')
Listing.create(name: "Test6", price: 299.99, body: "Bunch of info about this project", alive: true, category: "app", tag: "saas", created_at: '03-04-2001')
Listing.create(name: "Test7", price: 2329.99, body: "Bunch of info about this project", alive: false, category: "domain", tag: "saas", created_at: '02-04-2001')
Listing.create(name: "Test8", price: 2.99, body: "Bunch of info about this project", alive: true, category: "website", tag: "saas", created_at: '08-04-2001')
Listing.create(name: "Test9", price: 229.99, body: "Bunch of info about this project", alive: true, category: "website", tag: "saas", created_at: '11-04-2001')
Listing.create(name: "Test10", price: 209.99, body: "Bunch of info about this project", alive: false, category: "website", tag: "saas", created_at: '09-04-2001')
Listing.create(name: "Test11", price: 19.99, body: "Bunch of info about this project", alive: false, category: "website", tag: "saas", created_at: '010-04-2001')
Listing.create(name: "Test12", price: 22.99, body: "Bunch of info about this project", alive: true, category: "app", tag: "saas", created_at: '20-04-2001')
