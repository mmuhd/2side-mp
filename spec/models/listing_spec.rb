require 'rails_helper'

RSpec.describe Listing, type: :model do

  user = User.create!(email: "test@test.com#{rand(10000.00000)}", password: "Password")


  it "creates a listing" do
    listing = Listing.create!(name: "test_name", body: "test_body", price: 123, user: user)
    expect(Listing.find(listing.id).name).to eq('test_name')
    expect(Listing.find(listing.id).body).to eq('test_body')
    expect(Listing.find(listing.id).price).to eq(123)
    expect(Listing.find(listing.id).user).to eq(user)
  end

  it "makes sure a listing can be hidden" do
    listing = Listing.create!(name: "test_name", body: "test_body", price: 123, alive: true, user: user)
    expect(Listing.find(listing.id).alive).to eq(true)
    listing.alive = false
    listing.save
    expect(Listing.find(listing.id).alive).to eq(false)


  end
end
