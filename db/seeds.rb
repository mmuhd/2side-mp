# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all
Listing.destroy_all
User.destroy_all



10.times do |db|
    db = User.new
    db.email = "user#{rand(1..10)}@test#{rand(0.1..10.00)}.com"
    db.username = "Test #{rand(0.001..1.000)}"
    db.password = "Password"
    db.save
    5.times do |ls|
        ls = Listing.new
        ls.name = rand(10) > 5 ? "test world #{rand(10)}" : "test universe #{rand(50)}"
        ls.body = "this is a body"
        ls.price = rand(1.00..999.99)
        ls.alive = true
        ls.deleted = false
        ls.category = "domain"
        ls.tag = "test_tag"
        ls.created_at = Date.new(rand(1000..2077),rand(1..12),rand(1..30))
        ls.user = db
        ls.save
    end
end