# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Order.destroy_all
Listing.destroy_all
Admin.destroy_all
User.destroy_all

admin1 = User.new
admin1.username = "Admin1"
admin1.email = "admin1@mail.com"
admin1.password = "adminpass"
admin1.save
allow_admin = Admin.new
allow_admin.user = admin1
allow_admin.save
20.times do |ls|
    ls = Listing.new
    ls.name = "App for testing"
    ls.body = 'this is a body. for testing with'
    ls.price = rand(1.00..999.99)
    ls.alive = true
    ls.deleted = false
    ls.category = 'domain'
    ls.tag = 'test_tag'
    ls.user = admin1
    ls.save
end


admin2 = User.new
admin2.username = "Admin2"
admin2.email = "admin2@mail.com"
admin2.password = "adminpass"
admin2.save
allow_admin2 = Admin.new
allow_admin2.user = admin1
allow_admin2.save
20.times do |ls|
    ls = Listing.new
    ls.name = "App for testing"
    ls.body = 'this is a body. for testing with'
    ls.price = rand(1.00..999.99)
    ls.alive = true
    ls.deleted = false
    ls.category = 'domain'
    ls.tag = 'test_tag'
    ls.user = admin2
    ls.save
end





name = ['Shopify', 'Eb game', 'Ebay', 'paypal', 'gumtree', 'pen', 'red hat']
user = ['joe', 'ben', 'larry', 'harry', 'len', 'jim', 'td']
last = ['po', 'go', 'mew', 'news', 'pokemon', 'sant', 'rere']

5.times do |db|
    db = User.new
    db.email = "#{user.sample}.#{last.sample}@mail.com"
    db.username = "#{user.sample}.#{last.sample}"
    db.password = 'password'
    db.save
    10.times do |ls|
        ls = Listing.new
        ls.name = name.sample
        ls.body = 'this is a body. for testing with'
        ls.price = rand(1.00..999.99)
        ls.alive = true
        ls.deleted = false
        ls.category = 'domain'
        ls.tag = 'test_tag'
        ls.created_at = Date.new(rand(1000..2077),rand(1..12),rand(1..30))
        ls.user = db
        ls.save
    end
end