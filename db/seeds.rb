# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listing.destroy_all
u = User.new
u.username = "Test100"


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



10.times do |db|

    db = User.new
    db.email = "user#{rand(1..10)}@test#{rand(0.1..10.00)}.com"
    db.username = "Test#{rand(1.100):rand(1..100)}"
    db.password = "Password"
    db.save
    5.times do |ls|
        ls = Listing.new
        ls.name = rand(10) > 5 ? "test world #{rand(10)}" : "test universe #{rand(50)}"
        ls.body = "this is a body"
        ls.price = rand(1.00..999.99)
        ls.alive = true
        ls.category = "domain"
        ls.tag = "test_tag"
        ls.created_at = Date.new(rand(1000..2077),rand(1..12),rand(1..30))
        ls.user = db
        ls.save
    end

end