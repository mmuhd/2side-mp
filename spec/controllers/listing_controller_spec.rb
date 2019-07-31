require 'rails_helper'

RSpec.describe ListingController, type: :controller do

  user = User.create!(email: "test@#{rand(-1999.000)}", password: 'password')


  # Please fix this test
  # describe "GET #show" do
  #   it "returns a success response" do
  #     listing = Listing.last
  #     get :show, params: {id: listing.id}
  #     expect(response).to be_successful
  #   end
  # end

  describe "GET All listings #show" do
    it "returns a success response for all listings" do
      get :show
      expect(response).to be_successful
    end
  end


end
