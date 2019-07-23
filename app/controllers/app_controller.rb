class AppController < ApplicationController
  def index
    @new_listings = Listing.where(alive: true).last(6)
  end

  def about
  end
end
