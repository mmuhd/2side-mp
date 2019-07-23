class AppController < ApplicationController
  def index
    @new_listings = Listing.last(6)
  end

  def about
  end
end
