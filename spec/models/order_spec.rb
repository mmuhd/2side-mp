require 'rails_helper'

RSpec.describe Order, type: :model do
  user = User.create!(email: "test@test.#{rand(-10000.00000)}", password: "Password")
  user2 = User.create!(email: "test@test.#{rand(-100000.00000)}", password: "Password")
  listing = Listing.create!(name: "test_name", body: "test_body", price: 123, user: user)


  it "Makes a order" do
    order = Order.create!(session_id: "#{rand(1..10)+0.99*100}", user: user, buyer: user2.id, listing: listing, completed: false )
    expect(Order.find(order.id).user).to eq(user)
    expect(Order.find(order.id).listing.price).to eq(listing.price)
    expect(Order.find(order.id).completed).to_not eq(true)
  end

  it "Makes a listing completed" do
    order = Order.create!(session_id: "#{rand(1..10)+0.99*100}", user: user, buyer: user2.id, listing: listing, completed: true )
    expect(Order.find(order.id).completed).to eq(true)
  end

end
