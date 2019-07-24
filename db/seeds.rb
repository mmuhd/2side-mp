# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.destroy_all

100.times do |db|
db = Listing.new
db.name = rand(10) > 5 ? "test world #{rand(10)}" : "test universe #{rand(50)}"
db.body = "this is a body"
db.price = rand(1.00..999.99)
db.alive = true
db.category = "domain"
db.tag = "test_tag"
db.created_at = Date.new(rand(1000..2077),rand(1..12),rand(1..30))
db.save
end
