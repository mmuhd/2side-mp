require 'rails_helper'

RSpec.describe ListingController, type: :controller do

  user = User.create!(email: "test@#{rand(-1999.000)}", password: 'password')

  describe "GET #show" do
    it "returns a success response" do
      listing = Listing.create!(name: "test_name", body: "body", price: 123, user: user)
      get :show, params: {id: listing.id}, session: valid_session
      expect(response).to be_successful
    end
  end


end
